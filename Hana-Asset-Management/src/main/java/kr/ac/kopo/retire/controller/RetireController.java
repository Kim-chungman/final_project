package kr.ac.kopo.retire.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RetireController {

	@GetMapping("/retire")
	public String retire() {
		
		return "retire/retireMain";
	}
}
