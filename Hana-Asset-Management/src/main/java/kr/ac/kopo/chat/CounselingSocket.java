package kr.ac.kopo.chat;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.member.vo.MemberVO;

@ServerEndpoint("/counseling/{userName}")
public class CounselingSocket {
	
	@Autowired
	private static Map<Session,MemberVO> users = Collections.synchronizedMap(new HashMap<Session, MemberVO>());
	
	@OnMessage
	public void onMsg(String message, Session session) throws IOException{
		String userName = users.get(session).getName();
		System.out.println(userName + " : " + message);
		
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				if(!currentSession.equals(session)){
					currentSession.getBasicRemote().sendText(userName + " : " + message);
				}
			}
		}
		
	}
	
	@OnOpen
	public void onOpen(Session session, @PathParam("userName") String userName){
		
//		String userName = "상담자";
		System.out.println(userName);
		
		MemberVO client = new MemberVO();
		client.setName(userName);
		
		System.out.println(session);
		
		System.out.println(session + " connect");
		
		users.put(session, client);
		
		if(users.size()==1) {
			sendNotice(client.getName() + "님이 입장하셨습니다.");
			sendNotice("잠시 기다려주시면 상담이 진행됩니다.");
		}
		
		if(users.size()==2) {
			client.setName("관리자");
			sendNotice(client.getName() + "님이 입장하셨습니다.");
			sendNotice("유익한 시간되시기 바랍니다.");
		}
		
	}

	public void sendNotice(String message){
		String userName = "server";
		System.out.println(userName + " : " + message);
		
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				try {
					currentSession.getBasicRemote().sendText(userName + " : " + message);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@OnClose
	public void onClose(Session session) {
		String userName = users.get(session).getName();
		users.remove(session);
		sendNotice(userName + "님이 퇴장하셨습니다. 현재 사용자 " + users.size() + "명");
	}
	
	
	/*
    private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());
    
    @OnMessage
    public void onMessage(String message, Session session) throws IOException {
        System.out.println(message);
        synchronized(clients) {
            for(Session client : clients) {
                if(!client.equals(session)) {
                    client.getBasicRemote().sendText(message);
                }
            }
        }
    }
    
    @OnOpen
    public void onOpen(Session session) {
        System.out.println(session);
        clients.add(session);
    }
    
    @OnClose
    public void onClose(Session session) {
        clients.remove(session);
    }
    */
	
}
