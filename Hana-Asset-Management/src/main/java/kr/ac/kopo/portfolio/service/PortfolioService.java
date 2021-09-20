package kr.ac.kopo.portfolio.service;

import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.ui.Model;

import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

public interface PortfolioService {

	public JSONObject getChartData(PortfolioVO portfolio);

	public JSONObject getPortfolioData(PortfolioVO portfolio);

	public List<DecidePortfolioVO> getDecidePortfolio(PortfolioVO portfolio);

}
