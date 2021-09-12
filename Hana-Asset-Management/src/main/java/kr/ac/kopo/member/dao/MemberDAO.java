package kr.ac.kopo.member.dao;

import java.util.List;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberDAO {

	public MemberVO login(MemberVO member);

	public MemberVO idCheck(MemberVO member);
	
	public MemberVO joinMember(MemberVO member);
	
	public List<MemberVO> memberSelectAll();

	public void investTypeUpdate(MemberVO userVO);
	
}
