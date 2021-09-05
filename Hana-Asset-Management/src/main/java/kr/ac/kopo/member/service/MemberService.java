package kr.ac.kopo.member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberService {

	public MemberVO login(MemberVO member);

	public MemberVO idCheck(MemberVO member);

	public MemberVO joinMember(MemberVO member);

	public void mailSendWithUserKey(String email, String name, HttpServletRequest request);

	public void sendAttach(String email, String name, HttpSession session);
	
	public List<MemberVO> memberSelectAll();
}
