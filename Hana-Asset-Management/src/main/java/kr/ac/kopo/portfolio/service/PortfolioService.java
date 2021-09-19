package kr.ac.kopo.portfolio.service;

import org.json.simple.JSONObject;

import kr.ac.kopo.portfolio.vo.PortfolioVO;

public interface PortfolioService {

	JSONObject getChartData(PortfolioVO portfolio);

	JSONObject getPortfolioData(PortfolioVO portfolio);

}
