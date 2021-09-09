package kr.ac.kopo.account.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AccountController {

	@GetMapping("/account/join")
	public String join() {
		
		return "account/join";
	}
	
	@GetMapping("/account/accountInfo")
	public String accountInfo() {
		
		return "account/accountInfo";
	}
	
	@PostMapping("/account/accountInfo")
	public String accountJoin() {
		
		return "account/accountOpen";
	}
}
