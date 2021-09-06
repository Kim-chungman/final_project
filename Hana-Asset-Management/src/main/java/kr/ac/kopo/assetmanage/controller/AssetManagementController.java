package kr.ac.kopo.assetmanage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AssetManagementController {

	@RequestMapping("/assetManagement/explain")
	public String explain() {
		
		return "assetManagement/explain";
	}
}
