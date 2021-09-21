package kr.ac.kopo.retire.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
