package kr.ac.kopo.fund.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.fund.service.FundService;
import kr.ac.kopo.fund.vo.FundVO;

@Controller
public class FundController {

	@Autowired
	private FundService service;
	
	@GetMapping("/assetManagement/fundPortfolio")
	public String fundPortfolio(Model model) {
		
		List<FundVO> fundList = service.fundList();
		model.addAttribute("fundList", fundList);
		
		return "assetManagement/fundPortfolio";
		
	}
	
}
