package kr.ac.kopo.member.service;

import java.net.URL;
import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.MultiPartEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public MemberVO login(MemberVO member) {
		
		MemberVO memberVO = memberDAO.login(member);
		
		return memberVO;
	}

	@Override
	public MemberVO idCheck(MemberVO member) {
		
		MemberVO memberVO = memberDAO.idCheck(member);
		
		return memberVO;
	}

	@Override
	public MemberVO joinMember(MemberVO member) {
		
		MemberVO memberVO = memberDAO.joinMember(member);

		return memberVO;
	}

	@Override
	public void mailSendWithUserKey(String email, String name, HttpServletRequest request) {
		
		MimeMessage mail = mailSender.createMimeMessage();
	      String htmlStr = "<div style='margin-top: 50px; width: 1500px; height: 400px; border: none; margin-left: 80px;'>"
	            + "<h2 style='color: #008B8B font-family: inherit; margin-top: 30px;'>안녕하세요 Hana Solution 입니다!</h2><br>" 
	            + "<strong style='color: #008B8B font-family: inherit; font-size: 13pt;'>" + name + "님</strong>" + "<p style='color: gray; font-size: 13pt; font-family: inherit;'>Hana Solution 회원가입을 축하합니다.</p><br>" 
	            + "<p>아래 인증하기 버튼을 누르시면 로그인을 하실 수 있습니다. </p>(본인 메일이 아니면 삭제하시면 됩니다.)</div>" 
	            + "<div><img alt='가입축하' src='http://localhost:9999/Hana-Asset-Management/resources/images/celebration.png'>"
	            + "</div>"
	            + "<div style='margin-top: 20px; margin-left: 85px;'>"
	            + "<a href='http://localhost:9999/Hana-Asset-Management/login'><button style='font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none;'>"
	            + "인증하기"
	            + "</button></a></div>";
	      try {
	         mail.setSubject("[본인인증] Hana Solution 인증메일입니다.", "utf-8");
	         mail.setText(htmlStr, "utf-8", "html");
	         mail.addRecipient(RecipientType.TO, new InternetAddress(email));
	         mailSender.send(mail);
	      } catch (MessagingException e) {
	         e.printStackTrace();
	      }
	}
	
	public void sendAttach(String email, String name, HttpSession session) {
	      MultiPartEmail mail = new MultiPartEmail();
	      
	      mail.setHostName("smtp.gmail.com");   //메일 전송 서버 지정, 네이버 메일 - 환경설정 - pop3 설정
	      mail.setCharset("utf-8"); //인코딩 설정
	      mail.setDebug(true); //메일 전송 과정 추적해서 콘솔에 띄워줌
	      
	      mail.setAuthentication("cndaks23@gmail.com", "rudwp147*"); //로그인하기 위해 정보 입력
	      mail.setSSLOnConnect(true); //입력한 정보로 로그인 요청
	      
	      try {
	         mail.setFrom("cndaks23@gmail.com", "영하나플러스통장 약관발송");   //보내는 사람 메일 / 이름 설정
	         mail.addTo(email, name); //받는 사람 메일 / 이름, 회원가입 페이지에에서 가져온다.
	         
	         String htmlStr = "안녕하세요 Hana Solution 입니다!\n" 
	 	            + name + "님 Hana Solution 영하나플러스통장 계좌개설 축하합니다.\n" 
	 	            + "약관을 함께보내니 참고해주세요\n" 
	 	            + "감사합니다.";
	         
	         mail.setSubject("약관발송 메일입니다."); //메일 제목
	         mail.setMsg(htmlStr); //메일 내용
	         

	         //파일 첨부하기
	         EmailAttachment file = new EmailAttachment();
	         
	         //① 물리적 디스크내 파일 첨부
	         file.setPath("C:/Users/HP/Pictures/project/영하나플러스통장.pdf");
	         mail.attach(file);
	         
	         
	         //② 프로젝트 내의 파일 첨부
	         file = new EmailAttachment();
//	         file.setPath(session.getServletContext().getRealPath("resources/images/logo.png"));
	         file.setPath(session.getServletContext().getRealPath("WEB-INF/jsp/report/report.html"));
	         mail.attach(file);
	         
	         /*
	         //③ URL을 통해 파일 첨부
	         file = new EmailAttachment();
	         file.setURL(new URL("https://mvnrepository.com/assets/images/392dffac024b9632664e6f2c0cac6fe5-logo.png"));
	         mail.attach(file);
	         */
	         
	         mail.send(); //메일 발송 
	      } catch (Exception e) {
	         System.out.println(e.getMessage());
	      }
	   }
	
	// 이메일 난수 만드는 메서드
    private String init() {
       Random ran = new Random();
       StringBuffer sb = new StringBuffer();
       int num = 0;
    
       do {
          num = ran.nextInt(75) + 48;
          if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
             sb.append((char) num);
          } else {
             continue;
          }
    
       } while (sb.length() < size);
       if (lowerCheck) {
          return sb.toString().toLowerCase();
       }
       return sb.toString();
    }

	// 난수를 이용한 키 생성
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
	   this.lowerCheck = lowerCheck;
	   this.size = size;
	   return init();
	}

	@Override
	public List<MemberVO> memberSelectAll() {

		List<MemberVO> memberList = memberDAO.memberSelectAll();
		
		return memberList;
	}

	@Override
	public void investTypeUpdate(MemberVO userVO) {
		
		memberDAO.investTypeUpdate(userVO);
		
	}

	@Override
	public MemberVO getUserInfo(MemberVO client) {
		
		MemberVO user = memberDAO.getUserInfo(client);
		
		return user;
	}

}
