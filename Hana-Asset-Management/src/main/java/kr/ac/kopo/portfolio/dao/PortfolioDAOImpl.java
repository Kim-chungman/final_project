package kr.ac.kopo.portfolio.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.portfolio.vo.AnalysisVO;
import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.MemberPortfolioVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Repository
public class PortfolioDAOImpl implements PortfolioDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<AnalysisVO> getPortfolioData(PortfolioVO portfolio) {
		
		List<AnalysisVO> analysis = sqlSessionTemplate.selectList("fund.FundDAO.getPortfolioData", portfolio);
		
		return analysis;
	}

	@Override
	public void planInsert(DecidePortfolioVO decide) {
		
		sqlSessionTemplate.insert("fund.FundDAO.planInsert", decide);
		
	}

	@Override
	public List<DecidePortfolioVO> planSelect(PortfolioVO portfolio) {
		
		List<DecidePortfolioVO> list = sqlSessionTemplate.selectList("fund.FundDAO.planSelect", portfolio);
		
		return list;
	}

	@Override
	public void protfolioInsert(MemberPortfolioVO decide) {

		sqlSessionTemplate.insert("fund.FundDAO.protfolioInsert", decide);
		
	}

	@Override
	public void historyInsert(PortfolioVO portfolio) {

		sqlSessionTemplate.insert("fund.FundDAO.historyInsert", portfolio);
		
	}

}
