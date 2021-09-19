package kr.ac.kopo.portfolio.dao;

import java.util.List;

import kr.ac.kopo.portfolio.vo.AnalysisVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

public interface PortfolioDAO {

	List<AnalysisVO> getPortfolioData(PortfolioVO portfolio);

}
