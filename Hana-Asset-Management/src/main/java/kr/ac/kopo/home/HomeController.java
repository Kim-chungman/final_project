package kr.ac.kopo.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.service.MemberServiceImpl;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/fundtest")
	public String fundtest() {
		return "portfolio/fundJoin";
	}
	
	@RequestMapping("/mailTest")
	public String mailTest(HttpServletRequest request) {
		
		MemberServiceImpl service = new MemberServiceImpl();
		HttpSession session = request.getSession();
		
		
		service.sendAttach2("cndaksrla@naver.com", "김충만", session);
		
		return "map/kakaoMap";
	}
	
	@GetMapping("/map")
	public String viewMap() {
		
		return "map/kakaoMap";
	}
	
	@GetMapping("/design")
	public String design() {
		return "assetManagement/productDesign";
	}
	
	@GetMapping("/goalDesign")
	public String goalDesign() {
		return "plan/goalDesign";
	}
	
	@GetMapping("/design2030")
	public String design2030() {
		return "plan/plan2030";
	}
	
	@GetMapping("/design3040")
	public String design3040() {
		return "plan/plan3040";
	}
	
	@GetMapping("/design4050")
	public String design4050() {
		return "plan/plan4050";
	}
	
	@GetMapping("/design5060")
	public String design5060() {
		return "plan/plan5060";
	}
	
}
