package kr.ac.kopo.portfolio.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.portfolio.vo.AnalysisVO;
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

}
