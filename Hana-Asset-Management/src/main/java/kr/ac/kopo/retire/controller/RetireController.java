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
	
	@PostMapping("/retire/retireForm4")
	public String retireForm4(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		int myYear = Integer.parseInt(request.getParameter("ipt_본인생년"));
		int myMonth = Integer.parseInt(request.getParameter("ipt_본인생월"));
		int spouseYear = Integer.parseInt(request.getParameter("ipt_배우자생년"));
		int spouseMonth = Integer.parseInt(request.getParameter("ipt_배우자생월"));
		
		
		int myAge = (24240 - (myYear * 12))/12;
		if(myMonth-9<=0) {
			myAge +=1;
		}
		int spouseAge = (24240 - (spouseYear * 12))/12;
		if(spouseMonth-9<=0) {
			spouseAge +=1;
		}
		
		System.out.println("본인나이 : " + myAge + ", 배우자나이 : " + spouseAge);
		
		return "retire/retireForm4";
	}
	
	@PostMapping("/retire/retireForm5")
	public String retireForm5(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		int myYear = Integer.parseInt(request.getParameter("ipt_본인기대수명"));
		int myMonth = Integer.parseInt(request.getParameter("ipt_배우자기대수명"));
		int spouseYear = Integer.parseInt(request.getParameter("ipt_본인은퇴예상나이"));
		int spouseMonth = Integer.parseInt(request.getParameter("ipt_배우자은퇴예상나이"));
		
		System.out.println(myYear + ", " + myMonth);
		System.out.println(spouseYear + ", " + spouseMonth);
		
		return "retire/retireForm5";
	}
	
	@PostMapping("/retire/retireForm6")
	public String retireForm6(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		int myYear = Integer.parseInt(request.getParameter("input_mprice"));
		int myMonth = Integer.parseInt(request.getParameter("input_live1"));
		int spouseYear = Integer.parseInt(request.getParameter("input_live2"));
		
		System.out.println(myYear + ", " + myMonth + ", " + spouseYear);
		
		return "retire/retireForm6";
	}
	
	@PostMapping("/retire/retireForm7")
	public String retireForm7(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		String myYear = request.getParameter("sbx_본인공적연금유형_input");
		String spouseYear = request.getParameter("sbx_배우자공적연금유형_input");
		String myMonth = request.getParameter("본인퇴직연금유형_input");
		String spouseMonth = request.getParameter("배우자퇴직연금유형_input");
		
		System.out.println(myYear + ", " + myMonth);
		System.out.println(spouseYear + ", " + spouseMonth);
		return "retire/retireForm7";
	}
	
	@PostMapping("/retire/retireForm8")
	public String retireForm8(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		int myYear = Integer.parseInt(request.getParameter("ipt_개인연금"));
		int myMonth = Integer.parseInt(request.getParameter("ipt_매월적립금액2"));
		int spouseYear = Integer.parseInt(request.getParameter("ipt_은퇴준비예금"));
		int spouseMonth = Integer.parseInt(request.getParameter("ipt_매월적립금액"));
		
		System.out.println(myYear + ", " + myMonth);
		System.out.println(spouseYear + ", " + spouseMonth);
		
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
