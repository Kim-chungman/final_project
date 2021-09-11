package kr.ac.kopo.expense.controller;


import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.expense.service.ExpenseService;
import kr.ac.kopo.expense.vo.ExpenseVO;

@RestController
public class ExpenseController {

	@Autowired
	private ExpenseService service;
	
	@RequestMapping("/plan/expense")
	public ModelAndView chart2() {
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
