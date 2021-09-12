package kr.ac.kopo.assetmanage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.assetmanage.vo.InvestmentTypeVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class AssetManagementController {

	@Autowired
	private MemberService service;
	
	@RequestMapping("/assetManagement/explain")
	public String explain() {
		
		return "assetManagement/explain";
	}
	
	@RequestMapping("/assetManagement/investmentForm")
	public String investmentForm() {
		
		return "assetManagement/investmentForm";
	}
	
	@RequestMapping("/assetManagement/investmentTest")
	public String investmentTest() {
		
		return "assetManagement/investmentTest";
	}
	
	@PostMapping("/assetManagement/investmentResult")
	public String investmentResult(InvestmentTypeVO type, Model model) {
		
		double num = 0;
		
		if(type.getQ7_1() != null) {
			num = Double.parseDouble(type.getQ7_1());
		}
		if(type.getQ7_2() != null) {
			num = Double.parseDouble(type.getQ7_2());
		}
		if(type.getQ7_3() != null) {
			num = Double.parseDouble(type.getQ7_3());
		}
		if(type.getQ7_4() != null) {
			num = Double.parseDouble(type.getQ7_4());
		}
		if(type.getQ7_5() != null) {
			num = Double.parseDouble(type.getQ7_5());
		}
		
		double sum = Double.parseDouble(type.getQ1()) + Double.parseDouble(type.getQ2()) + Double.parseDouble(type.getQ3()) + Double.parseDouble(type.getQ4())
					+ Double.parseDouble(type.getQ5()) + Double.parseDouble(type.getQ6()) + num + Double.parseDouble(type.getQ8());
		
		double avg = (sum/39)*100;
		
		String investType = "";
		if(avg < 43) {
			investType = "안전형";
		} else if(avg < 55) {
			investType = "안전추구형";
		} else if(avg < 68) {
			investType = "위험중립형";
		} else if(avg < 81) {
			investType = "적극투자형";
		} else {
			investType = "공격투자형";
		}
		
		if(type.getQ1().equals("3") && type.getQ2().equals("0.5")) {
			investType = "안전형";
		}
		
		if(type.getQ3().equals("1")) {
			investType = "안전형";
		}
		
		double score = Math.round(avg);
		
		System.out.println(type.getQ1() + " : " + type.getQ2());
		System.out.println("총점 : " + score + "점으로 성향은 " + investType + "입니다.");
		
		model.addAttribute("investType",investType);
		model.addAttribute("score", score);
		
		return "assetManagement/investmentResult";
	}
	
	@GetMapping("/assetManagement/productDesign/{investType}")
	public String productDesign(@PathVariable String investType, Model model, HttpServletRequest request) {
		
		model.addAttribute("investType", investType);
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		int no = 0;
		
		switch(investType) {
		
		case "안전형" :
			no = 1;
			userVO.setInvestmentType(no);
			break;
		case "안전추구형" :
			no = 2;
			userVO.setInvestmentType(no);
			break;
		case "위험중립형" :
			no = 3;
			userVO.setInvestmentType(no);
			break;
		case "적극투자형" :
			no = 4;
			userVO.setInvestmentType(no);
			break;
		case "공격투자형" :
			no = 5;
			userVO.setInvestmentType(no);
			break;
		}
		
		service.investTypeUpdate(userVO);
		
		session.removeAttribute("userVO");
		MemberVO member = service.login(userVO);
		
		session.setAttribute("userVO", member);
		
		System.out.println(userVO);
		
		return "assetManagement/productDesign";
	}
	
}
