package kr.ac.kopo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.crawling.vo.DepositCrawlingVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class CrawlingTest {

	@Test
	public void crawlingTest() {
		
		  String url = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2811";
//	      String url = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2812";
//	      String url = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2813";
	      
	      Document doc = null;
	      
	      try {
	         doc = Jsoup.connect(url).get();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      
	      Elements element = doc.select("div.wrap-product-list");
	      
//		  li[class=item type2] > div.check-style-type > label.checkCompare > span.label-area > span.product-tit > em 절대경로	      
	      
	      Iterator<Element> le1 = element.select("span.product-tit > em").iterator();
	      Iterator<Element> le2 = element.select("span.tit-desc > a").iterator();
	      Iterator<Element> le3 = element.select("span.desc-detail > strong").iterator();
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
		  System.out.println(deposit.toString());
	      
	      /*
	      while(le1.hasNext()) {
	         System.out.println(le1.next().text() + " : " + le2.next().text());
	      }
	      */
	      
		/*
	      String url = "https://finance.naver.com/sise/lastsearch2.nhn";
	      Document doc = null;
	      
	      try {
	         doc = Jsoup.connect(url).get();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      
	      Elements element = doc.select("div.box_type_l");
	      
	      Iterator<Element> le1 = element.select("a").iterator();
	      Iterator<Element> le2 = element.select("td.no").iterator();
	      
	      Elements elements = doc.getElementsByAttributeValue("class","number");
	      
	      List<CrawlingVO> list = new ArrayList<CrawlingVO>();
	      int cnt = 0;
	      
	      while(le1.hasNext()) {
	    	 CrawlingVO test = new CrawlingVO();
	         test.setName(le1.next().text());
	         
	         int num = Integer.parseInt(le2.next().text());
	         int start = (num-1)*10;
	         int end = num*10;
	         for(int i=start; i<end; i++) {
	            switch(i%10) {
	            case 0 :
	               test.setSearchRate(elements.get(i).text());
	               break;
	            case 1 :
	               test.setCurrentPrice(elements.get(i).text());
	               break;
	            case 2 :
	               test.setBeforePrice(elements.get(i).text());
	               break;
	            case 3 :
	               test.setUpAndDownRate(elements.get(i).text());
	               break;
	            case 4 :
	               test.setVolume(elements.get(i).text());
	               break;
	            case 5 :
	               test.setStartPrice(elements.get(i).text());
	               break;
	            case 6 :
	               test.setHighPrice(elements.get(i).text());
	               break;
	            case 7 :
	               test.setLowPrice(elements.get(i).text());
	               break;
	            case 8 :
	               test.setPer(elements.get(i).text());
	               break;
	            case 9 :
	               test.setRoe(elements.get(i).text());
	               list.add(test);
	               break;
	            }
	         }
	      }
	      
	      for(CrawlingVO rank : list) {
	         System.out.println(rank);
	      }

		*/
	}
}
