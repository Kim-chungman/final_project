package kr.ac.kopo.mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Repository
public class MypageDAOImpl implements MypageDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public PortfolioVO getPortfolio(String id) {
		
		PortfolioVO portfolio = sqlSessionTemplate.selectOne("fund.FundDAO.getPortfolio", id);
		
		return portfolio;
	}
	
}
