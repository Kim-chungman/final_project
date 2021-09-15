package kr.ac.kopo.fund.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.fund.vo.FundVO;

@Repository
public class FundDAOImpl implements FundDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FundVO> fundList() {
		
		List<FundVO> fundList = sqlSessionTemplate.selectList("fund.FundDAO.fundList");
		
		return fundList;
	}

	
}
