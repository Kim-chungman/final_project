package kr.ac.kopo.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.expense.service.ExpenseService;
import kr.ac.kopo.expense.vo.ExpenseVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.mypage.service.MypageService;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Controller
public class MypageController {

	@Autowired(required=true)
	private MypageService service;
	
	@Autowired(required=true)
	private ExpenseService expenseService;
	
	@GetMapping("/myPage")
	public String myPage(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		PortfolioVO portfolio = new PortfolioVO();
		if(userVO != null) {
			portfolio = service.getPortfolio(userVO.getId());
		}
		
		model.addAttribute("portfolio", portfolio);
		
		String msg = "home";
		model.addAttribute("msg", msg);
		
		return "myPage/myPage";
	}
	
	@GetMapping("/myPage/expense")
	public String myExpense(HttpServletRequest request, Model model) {
		
		String msg = "expense";
		String myExpense = "myExpense";
		model.addAttribute("msg", msg);
		model.addAttribute("myExpense", myExpense);
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		PortfolioVO portfolio = new PortfolioVO();
		if(userVO != null) {
			portfolio = service.getPortfolio(userVO.getId());
		}
		
		  // 지출내역 가져오기
		  ExpenseVO expense = new ExpenseVO();
		  expense.setMember_id(userVO.getId());
		  
		  String age = expenseService.ageData(expense);
		  List<ExpenseVO> monthExpense = expenseService.getMonthExpense(expense);
		  List<ExpenseVO> myData = expenseService.getMyData(expense);
		  List<ExpenseVO> yourData = expenseService.getyourData(expense);
		  
		  int maxExpense = 0;
		  int avgExpense = 0;
		  String maxMonth = "";
		  for(ExpenseVO list: monthExpense) {
			  
			  maxExpense = list.getJan() > list.getFeb() ? list.getJan() : list.getFeb();
			  maxMonth = list.getJan() > list.getFeb() ? "1월" : "2월";
			  maxExpense = maxExpense > list.getMar() ? maxExpense : list.getMar();
			  maxMonth = maxExpense > list.getMar() ? maxMonth : "3월";
			  maxExpense = maxExpense > list.getApr() ? maxExpense : list.getApr();
			  maxMonth = maxExpense > list.getApr() ? maxMonth : "4월";
			  maxExpense = maxExpense > list.getMay() ? maxExpense : list.getMay();
			  maxMonth = maxExpense > list.getMay() ? maxMonth : "5월";
			  maxExpense = maxExpense > list.getJun() ? maxExpense : list.getJun();
			  maxMonth = maxExpense > list.getJun() ? maxMonth : "6월";
			  maxExpense = maxExpense > list.getJul() ? maxExpense : list.getJul();
			  maxMonth = maxExpense > list.getJul() ? maxMonth : "7월";
			  maxExpense = maxExpense > list.getAug() ? maxExpense : list.getAug();
			  maxMonth = maxExpense > list.getAug() ? maxMonth : "8월";
			  maxExpense = maxExpense > list.getSep() ? maxExpense : list.getSep();
			  maxMonth = maxExpense > list.getSep() ? maxMonth : "9월";
			  maxExpense = maxExpense > list.getOct() ? maxExpense : list.getOct();
			  maxMonth = maxExpense > list.getOct() ? maxMonth : "10월";
			  maxExpense = maxExpense > list.getNov() ? maxExpense : list.getNov();
			  maxMonth = maxExpense > list.getNov() ? maxMonth : "11월";
			  maxExpense = maxExpense > list.getDec() ? maxExpense : list.getDec();
			  maxMonth = maxExpense > list.getDec() ? maxMonth : "12월";
			  avgExpense = (list.getJan() + list.getFeb() + list.getMar() + list.getApr() +
					  	    list.getMay() + list.getJun() + list.getJul() + list.getAug() +
					  	    list.getSep() + list.getOct() + list.getNov() + list.getDec())/12;
			  avgExpense = Math.round(avgExpense);
		  }
		  
		  List<ExpenseVO> expenseList = expenseService.getExpenseRank(maxMonth, expense);
		  
		  model.addAttribute("myage", age);
		  model.addAttribute("myData", myData);
		  model.addAttribute("yourData", yourData);
		  model.addAttribute("monthExpense", monthExpense.get(0).getSep());
		  model.addAttribute("maxExpense", maxExpense);
		  model.addAttribute("maxMonth", maxMonth);
		  model.addAttribute("avgExpense", avgExpense);
		  model.addAttribute("expenseList", expenseList);
		
		
		model.addAttribute("portfolio", portfolio);
		
		return "myPage/myExpense";
	}
	
	@GetMapping("/myPage/portfolio")
	public String myPortfolio() {
		return "myPage/portfolio";
	}
	
}
