package kr.ac.kopo.fund.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.fund.vo.FundVO;
import kr.ac.kopo.fund.vo.RatioVO;

@Repository
public class FundDAOImpl implements FundDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FundVO> fundList() {
		
		List<FundVO> fundList = sqlSessionTemplate.selectList("fund.FundDAO.fundList");
		
		return fundList;
	}

	@Override
	public void presentPrice(FundVO fund) {
		
		sqlSessionTemplate.update("fund.FundDAO.presentPrice", fund);
		
	}

	@Override
	public void threeMonthPrice(FundVO fund) {

		sqlSessionTemplate.update("fund.FundDAO.threeMonthPrice", fund);
		
	}

	@Override
	public void rateInsert(RatioVO rateVO) {
		
		sqlSessionTemplate.insert("fund.FundDAO.rateInsert", rateVO);
		
	}

	
}
