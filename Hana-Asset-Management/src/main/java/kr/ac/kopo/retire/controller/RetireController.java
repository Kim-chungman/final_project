package kr.ac.kopo.retire.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RetireController {

	@GetMapping("/retire")
	public String retire() {
		
		return "retire/retireMain";
	}
	
	@RequestMapping("/retire/agree")
	public String retireAgree() {
		return "retire/retireAgree";
	}
	
	@RequestMapping("/retire/retireForm")
	public String retireForm() {
		return "retire/retireForm";
	}
	
	@RequestMapping("/retire/retireForm2")
	public String retireForm2() {
		return "retire/retireForm2";
	}
	
	@RequestMapping("/retire/retireForm3")
	public String retireForm3() {
		return "retire/retireForm3";
	}
	
	@RequestMapping("/retire/retireForm4")
	public String retireForm4() {
		return "retire/retireForm4";
	}
	
	@RequestMapping("/retire/retireForm5")
	public String retireForm5() {
		return "retire/retireForm5";
	}
	
	@RequestMapping("/retire/retireForm6")
	public String retireForm6() {
		return "retire/retireForm6";
	}
	
	@RequestMapping("/retire/retireForm7")
	public String retireForm7() {
		return "retire/retireForm7";
	}
	
	@RequestMapping("/retire/retireForm8")
	public String retireForm8() {
		return "retire/retireForm8";
	}
	
	@PostMapping(value = "/retire/ageCheck", produces = "application/text; charset=utf8")
	@ResponseBody
	public String ageCheck(HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		int word = Integer.parseInt(request.getParameter("word"));
		int month = Integer.parseInt(request.getParameter("month"));
		
		int age = (24240 - (word * 12))/12;
		if(month-9<=0) {
			age +=1;
		}
		
		String msg = age + "";
		
		return msg;
	}
}
