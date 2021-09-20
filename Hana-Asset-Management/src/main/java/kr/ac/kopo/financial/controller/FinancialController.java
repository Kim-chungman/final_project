package kr.ac.kopo.financial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FinancialController {

	@RequestMapping("/financial/financialPosition")
	public String position() {
		
		return "financial/financialPosition";
	}
	
}
