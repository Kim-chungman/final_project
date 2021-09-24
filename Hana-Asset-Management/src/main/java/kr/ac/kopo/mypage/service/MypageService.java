package kr.ac.kopo.mypage.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.ac.kopo.expense.vo.ExpenseVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

public interface MypageService {

	public PortfolioVO getPortfolio(String id);

	public void excelConverter(List<ExpenseVO> list, String name, String start, String last);

}
