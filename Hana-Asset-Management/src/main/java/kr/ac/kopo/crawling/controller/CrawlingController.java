package kr.ac.kopo.crawling.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.crawling.service.CrawlingService;
import kr.ac.kopo.crawling.vo.DepositCrawlingVO;

@Controller
public class CrawlingController {

	@Autowired
	private CrawlingService service;
	
	@GetMapping("/product")
	public String product(Model model) {
		
		String url = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2811";
		String url2 = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2812";
		String url3 = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2813";
		
		List<DepositCrawlingVO> deposit = service.depositCraw(url);
		List<DepositCrawlingVO> saving = service.savingCraw(url2);
		List<DepositCrawlingVO> account = service.accountCraw(url3);
	    
	    model.addAttribute("deposit", deposit);
	    model.addAttribute("saving", saving);
	    model.addAttribute("account", account);
		
		return "product/product";
	}
	
}
