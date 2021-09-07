package kr.ac.kopo.crawling.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import kr.ac.kopo.crawling.vo.DepositCrawlingVO;

@Service
public class CrawlingServiceImpl implements CrawlingService{

	@Override
	public List<DepositCrawlingVO> depositCraw(String url) {
		
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
	    Iterator<Element> le4 = element.select("span.product-tit > i").iterator();
	    
	    List<DepositCrawlingVO> deposit = new ArrayList<DepositCrawlingVO>();
	    
		while(le1.hasNext()) {
	
		  DepositCrawlingVO depositCraw = new DepositCrawlingVO();
		  
		  depositCraw.setName(le1.next().text());
		  depositCraw.setDesc(le2.next().text());
		  depositCraw.setRate(le3.next().text());
		  depositCraw.setType(le4.next().text());
		  
		  deposit.add(depositCraw);
		}
	    
	    return deposit;
		
	}

	@Override
	public List<DepositCrawlingVO> savingCraw(String url2) {
		
		Document doc = null;
	    
	    try {
	       doc = Jsoup.connect(url2).get();
	    } catch(Exception e) {
	       e.printStackTrace();
	    }
	    
	    Elements element = doc.select("div.wrap-product-list");
	    
	    Iterator<Element> le1 = element.select("span[class=product-tit]>em").iterator();
	    Iterator<Element> le2 = element.select("span[class=tit-desc]>a").iterator();
	    Iterator<Element> le3 = element.select("span[class=desc-detail]>strong").iterator();
	    Iterator<Element> le4 = element.select("span.product-tit > i").iterator();
	    
	    List<DepositCrawlingVO> deposit = new ArrayList<DepositCrawlingVO>();
	    
		while(le1.hasNext()) {
	
		  DepositCrawlingVO depositCraw = new DepositCrawlingVO();
		  
		  depositCraw.setName(le1.next().text());
		  depositCraw.setDesc(le2.next().text());
		  depositCraw.setRate(le3.next().text());
		  depositCraw.setType(le4.next().text());
		  
		  deposit.add(depositCraw);
		}
	    
	    return deposit;
	}

	@Override
	public List<DepositCrawlingVO> accountCraw(String url3) {

		Document doc = null;
	    
	    try {
	       doc = Jsoup.connect(url3).get();
	    } catch(Exception e) {
	       e.printStackTrace();
	    }
	    
	    Elements element = doc.select("div.wrap-product-list");
	    
	    Iterator<Element> le1 = element.select("span[class=product-tit]>em").iterator();
	    Iterator<Element> le2 = element.select("span[class=tit-desc]>a").iterator();
	    Iterator<Element> le3 = element.select("span.product-tit > i").iterator();
	    
	    List<DepositCrawlingVO> deposit = new ArrayList<DepositCrawlingVO>();
	    
		while(le1.hasNext()) {
	
		  DepositCrawlingVO depositCraw = new DepositCrawlingVO();
		  
		  depositCraw.setName(le1.next().text());
		  depositCraw.setDesc(le2.next().text());
		  depositCraw.setType(le3.next().text());
		  
		  deposit.add(depositCraw);
		}
	    
	    return deposit;
		
	}
	
}
