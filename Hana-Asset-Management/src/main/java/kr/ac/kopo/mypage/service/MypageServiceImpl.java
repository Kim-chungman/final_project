package kr.ac.kopo.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.mypage.dao.MypageDAO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired(required=true)
	private MypageDAO mypageDAO;

	@Override
	public PortfolioVO getPortfolio(String id) {
		
		PortfolioVO portfolio = mypageDAO.getPortfolio(id);
		
		return portfolio;
	}
}
