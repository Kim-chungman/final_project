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
		
		expense.setMemberId(id);
		
		return service.getChartData(expense);
    }
	
	@RequestMapping("/customerList2")
	public JSONObject customerList2(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMemberId(id);
		
		return service.getChartData2(expense);
    }

	@RequestMapping("/customerList3")
	public JSONObject customerList3(HttpServletRequest request) throws Exception {
     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMemberId(id);
		
		return service.getChartData3(expense);
    }
	
}
