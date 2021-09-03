package kr.ac.kopo.member.dao;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberDAO {

	public MemberVO login(MemberVO member);

	public MemberVO idCheck(MemberVO member);
	
	public MemberVO joinMember(MemberVO member);
	
}
