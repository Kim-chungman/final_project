package kr.ac.kopo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.crawling.vo.DepositCrawlingVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class CrawlingTest {

	@Ignore
	@Test
	public void crawlingTest() {
		
		  String url = "https://www.kebhana.com/cont/mall/mall26/mall2602/index.jsp?_menuNo=62634#//HanaBank";
//	      String url = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2812";
//	      String url = "https://www.kebhana.com/cont/mall/mall08/mall0805/index.jsp?catId=spb_2813";
	      
	      Document doc = null;
	      
	      try {
	         doc = Jsoup.connect(url).get();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      
	      Elements element = doc.select("table[themefundList leftLine]");
	      
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
	
	@Test
	public void crawlingTest2() {
		
		String str = "KR5306AJ1406";
		String url = "https://finance.naver.com/fund/fundDetail.nhn?fundCd="+str;	      
	    Document doc = null;
	      
	      try {
	         doc = Jsoup.connect(url).get();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      
	      Elements element = doc.select("div[id=content]");
	      
//		  li[class=item type2] > div.check-style-type > label.checkCompare > span.label-area > span.product-tit > em 절대경로	      
	      
	      Iterator<Element> le1 = element.select("div[class=spot fund_deatil]>div[class=rate_info]>div[class=today]>p[class=no_today no_today_v2]>em[class=no_up]").iterator();
	      Iterator<Element> le2 = element.select("div[class=spot fund_deatil]>div[class=rate_info]>div[class=today]>p[class=no_exday]>em[class=no_up]").iterator();
	      Iterator<Element> le3 = element.select("div[class=spot fund_deatil]>div[class=rate_info]>table[class=no_info]>tbody>tr>td").iterator();
	      Iterator<Element> le4 = element.select("div[class=section_analysis]>table[class=tbl_fund]>tbody>tr>td").iterator();
	      
	      String three_month_rate = "";
	      String three = "";
	      String[] three_month = null;
	      String[] three_mr = null;
	      double rate = 0;
	      
		  while(le1.hasNext()) {
			
			  System.out.println(le1.next().text());
			  System.out.println(le2.next().text());
		  
		  }
		 
		  while(le3.hasNext()) {
			  
			  three_month_rate = le3.next().text();
			  three_month = three_month_rate.split(" ");
			  if(three_month[0].equals("3개월")) {
				  three = three_month[2];
				  System.out.println(three_month[0]);
				  three_mr = three.split("%");
				  rate = Double.parseDouble(three_mr[0]);
				  System.out.println(rate);
			  }
			  
			  
		  }
		  
		  int no = 0;
		  String[] ratio = new String[20];
		  while(le4.hasNext()) {
			  ratio[no] = le4.next().text();
			  System.out.println(ratio[no]);
			  no++;
		  }
		  
		
	}
	
}
