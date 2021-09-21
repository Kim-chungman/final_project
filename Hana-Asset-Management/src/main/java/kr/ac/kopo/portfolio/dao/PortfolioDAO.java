package kr.ac.kopo.portfolio.dao;

import java.util.List;

import kr.ac.kopo.portfolio.vo.AnalysisVO;
import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.MemberPortfolioVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

public interface PortfolioDAO {

	public List<AnalysisVO> getPortfolioData(PortfolioVO portfolio);

	public void planInsert(DecidePortfolioVO decide);

	public List<DecidePortfolioVO> planSelect(PortfolioVO portfolio);

	public void protfolioInsert(MemberPortfolioVO memberFile);

	public void historyInsert(PortfolioVO portfolio);

}
