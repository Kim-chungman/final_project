package kr.ac.kopo.expense.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.expense.service.ExpenseService;

@RestController
public class ExpenseController {

	@Autowired
	private ExpenseService service;
	
	@RequestMapping("/plan/expense")
	public ModelAndView chart2() {
      return new ModelAndView("plan/monthExpense");
    }
	
	@RequestMapping("/customerList")
	public JSONObject customerList() {
      return service.getChartData();
    }

	
}
