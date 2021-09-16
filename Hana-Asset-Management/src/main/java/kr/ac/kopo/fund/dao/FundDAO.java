package kr.ac.kopo.fund.dao;

import java.util.List;

import kr.ac.kopo.fund.vo.FundVO;
import kr.ac.kopo.fund.vo.RatioVO;

public interface FundDAO {

	public List<FundVO> fundList();

	public void presentPrice(FundVO fund);

	public void threeMonthPrice(FundVO fund);

	public void rateInsert(RatioVO rateVO);

}
