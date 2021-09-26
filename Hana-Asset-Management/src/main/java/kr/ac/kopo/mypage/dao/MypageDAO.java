package kr.ac.kopo.mypage.dao;

import java.util.List;

import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

public interface MypageDAO {

	public PortfolioVO getPortfolio(String id);

	public List<DecidePortfolioVO> getPlanSelect(String id);

}
