package kr.ac.kopo.account.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {

	@GetMapping("/account/join")
	public String join() {
		
		return "account/join";
	}
	
}
