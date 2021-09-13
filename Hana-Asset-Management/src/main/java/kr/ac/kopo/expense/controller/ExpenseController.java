package kr.ac.kopo.expense.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.expense.service.ExpenseService;
import kr.ac.kopo.expense.vo.ExpenseVO;
import kr.ac.kopo.member.vo.MemberVO;

@RestController
public class ExpenseController {

	@Autowired
	private ExpenseService service;
	
	@RequestMapping("/plan/expense")
	public ModelAndView chart2(HttpServletRequest request, Model model) {
	  
	  HttpSession session = request.getSession();
	  MemberVO userVO = (MemberVO)session.getAttribute("userVO");
	
	  ExpenseVO expense = new ExpenseVO();
	  expense.setMember_id(userVO.getId());
	  
	  String age = service.ageData(expense);
	  List<ExpenseVO> monthExpense = service.getMonthExpense(expense);
	  List<ExpenseVO> myData = service.getMyData(expense);
	  List<ExpenseVO> yourData = service.getyourData(expense);
	  
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
	  
	  List<ExpenseVO> expenseList = service.getExpenseRank(maxMonth, expense);
	  
	  model.addAttribute("myage", age);
	  model.addAttribute("myData", myData);
	  model.addAttribute("yourData", yourData);
	  model.addAttribute("maxExpense", maxExpense);
	  model.addAttribute("maxMonth", maxMonth);
	  model.addAttribute("avgExpense", avgExpense);
	  model.addAttribute("expenseList", expenseList);
	  
      return new ModelAndView("plan/monthExpense");
    }
	
	@RequestMapping("/customerList")
	public JSONObject customerList(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getChartData(expense);
    }
	
	@RequestMapping("/customerList2")
	public JSONObject customerList2(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getChartData2(expense);
    }

	@RequestMapping("/customerList3")
	public JSONObject customerList3(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getChartData3(expense);
    }
	
	@RequestMapping("/pieChart")
	public JSONObject pieChart(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getpieChartData(expense);
    }
	
	@RequestMapping("/pieChart2")
	public JSONObject pieChart2(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getpieChartData2(expense);
    }
	
	@RequestMapping("/pieChart3")
	public JSONObject pieChart3(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getpieChartData3(expense);
    }
	
	@RequestMapping("/pieChart4")
	public JSONObject pieChart4(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);;
		
		return service.getpieChartData4(expense);
    }
	
	@RequestMapping("/ageChart")
	public JSONObject ageChart(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getageChartData(expense);
    }
	
	@RequestMapping("/ageChart2")
	public JSONObject ageChart2(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getageChartData2(expense);
    }
	
	@RequestMapping("/ageChart3")
	public JSONObject ageChart3(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getageChartData3(expense);
    }
	
	@RequestMapping("/ageChart4")
	public JSONObject ageChart4(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
		
		return service.getageChartData4(expense);
    }
	
}
