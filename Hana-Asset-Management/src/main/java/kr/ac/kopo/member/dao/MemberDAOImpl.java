package kr.ac.kopo.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MemberVO login(MemberVO member) {

		MemberVO userVO = sqlSessionTemplate.selectOne("member.MemberDAO.login", member);
		
		return userVO;
	}

	@Override
	public MemberVO idCheck(MemberVO member) {
		
		MemberVO memberVO = sqlSessionTemplate.selectOne("member.MemberDAO.idCheck", member);
		
		return memberVO;
	}

	@Override
	public MemberVO joinMember(MemberVO member) {
		
		int num = sqlSessionTemplate.insert("member.MemberDAO.join", member);

		MemberVO memberVO = null;
		
		if(num==1) {
			memberVO = sqlSessionTemplate.selectOne("member.MemberDAO.login", member);
		}
		
		return memberVO;
	}

	@Override
	public List<MemberVO> memberSelectAll() {

		List<MemberVO> memberList = sqlSessionTemplate.selectList("member.MemberDAO.selectAll");
		
		return memberList;
	}

	@Override
	public void investTypeUpdate(MemberVO userVO) {
		
		sqlSessionTemplate.update("member.MemberDAO.investTypeUpdate", userVO);
		
	}

	@Override
	public MemberVO getUserInfo(MemberVO client) {
		
		MemberVO user = sqlSessionTemplate.selectOne("member.MemberDAO.getUserInfo", client);
		
		return user;
	}

}
