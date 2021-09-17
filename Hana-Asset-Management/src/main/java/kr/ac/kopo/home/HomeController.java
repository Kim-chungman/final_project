package kr.ac.kopo.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
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
	
}
