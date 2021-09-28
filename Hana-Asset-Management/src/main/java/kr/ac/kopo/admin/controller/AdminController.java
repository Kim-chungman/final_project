package kr.ac.kopo.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.admin.service.AdminService;
import kr.ac.kopo.expense.vo.ExpenseVO;

@Controller
public class AdminController {

	@Autowired(required = true)
	private AdminService service;
	
	@GetMapping("/adminPage")
	public ModelAndView adminPage() {
		
		return new ModelAndView("/admin/adminPage");
	}
	
	@RequestMapping("/adminPage/customerExpense")
	@ResponseBody
	public JSONObject customerExpense() throws Exception {
	     
		return service.getCustomerData();
		
   }
	
	@RequestMapping("/adminPage/customerAge")
	@ResponseBody
	public JSONObject customerAge() throws Exception {
		
		return service.customerAge();
		
   }
	
	@RequestMapping("/adminPage/customerAvg")
	@ResponseBody
	public JSONObject customerAvg(HttpServletRequest request) throws Exception {
	     
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ExpenseVO expense = new ExpenseVO();
		
		expense.setMember_id(id);
			
		return service.customerAvg(expense);
		
   }
	
}
