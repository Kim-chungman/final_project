package kr.ac.kopo.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.mypage.service.MypageService;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Controller
public class MypageController {

	@Autowired(required=true)
	private MypageService service;
	
	@GetMapping("/myPage")
	public String myPage(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		PortfolioVO portfolio = new PortfolioVO();
		if(userVO != null) {
			portfolio = service.getPortfolio(userVO.getId());
		}
		
		model.addAttribute("portfolio", portfolio);
		
		return "myPage/myPage";
	}
	
	@GetMapping("/myPage/portfolio")
	public String myPortfolio() {
		return "myPage/portfolio";
	}
	
}
