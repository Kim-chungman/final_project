package kr.ac.kopo.home;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.home.crawling.DepositCrawlingVO;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/product")
	public String product(Model model) {
		
		String url = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2811";
	    Document doc = null;
	    
	    try {
	       doc = Jsoup.connect(url).get();
	    } catch(Exception e) {
	       e.printStackTrace();
	    }
	    
	    Elements element = doc.select("div.wrap-product-list");
	    
	    Iterator<Element> le1 = element.select("span[class=product-tit]>em").iterator();
	    Iterator<Element> le2 = element.select("span[class=tit-desc]>a").iterator();
	    Iterator<Element> le3 = element.select("span[class=desc-detail]>strong").iterator();
	    
	    List<DepositCrawlingVO> deposit = new ArrayList<DepositCrawlingVO>();
	    
		while(le1.hasNext()) {
	
		  DepositCrawlingVO depositCraw = new DepositCrawlingVO();
		  
		  depositCraw.setName(le1.next().text());
		  depositCraw.setDesc(le2.next().text());
		  depositCraw.setRate(le3.next().text());
		  
		  deposit.add(depositCraw);
		}
	    
	    model.addAttribute("deposit", deposit);
		
		return "product/product";
	}
}
