package kr.ac.kopo.fund.service;

import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.fund.dao.FundDAO;
import kr.ac.kopo.fund.vo.FundVO;

@Service
public class FundServiceImpl implements FundService{

	@Autowired
	private FundDAO fundDAO;
	
	@Override
	public List<FundVO> fundList() {
		
		List<FundVO> fundList = fundDAO.fundList();
		
		/*
		for(FundVO fund : fundList) {
			
			String url = "https://finance.naver.com/fund/fundDetail.nhn?fundCd="+fund.getFund_code();	      
		    Document doc = null;
		    
		      try {
		         doc = Jsoup.connect(url).get();
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      
		      Elements element = doc.select("div[id=content]");
		      
		      Iterator<Element> le1 = element.select("div[class=spot fund_deatil]>div[class=rate_info]>div[class=today]>p[class=no_today no_today_v2]>em").iterator();
		      Iterator<Element> le3 = element.select("div[class=spot fund_deatil]>div[class=rate_info]>table[class=no_info]>tbody>tr>td").iterator();
		      
		      String price = "";
		      String three_month_rate ="";
			  String[] three_mr = new String[5];
			  String[] three_month = new String[5];
			  
			  
			  while(le1.hasNext()) {
				
				  price = le1.next().text();
				  if(price.contains(",")) {
					  three_mr = price.split(",");
					  price = three_mr[0]+three_mr[1];
				  }
				  System.out.println(price);
				  
				  fund.setPresent_price(Double.parseDouble(price));
				  fundDAO.presentPrice(fund);
				  System.out.println(fund.getPresent_price());
				  break;
			  }
			  
			 
			  while(le3.hasNext()) {
				  
				  three_month_rate = le3.next().text();
				  if(three_month_rate.equals("N/A") || three_month_rate.equals("")) {
					  fund.setThree_month_rate(0);
					  System.out.println(0);
				  } else {
					  three_month = three_month_rate.split(" ");
					  if(three_month[0].equals("3개월")) {
						  price = three_month[2];
						  if(price.contains("%")) {
							  three_mr = price.split("%");
							  fund.setThree_month_rate(Double.parseDouble(three_mr[0]));
							  System.out.println(fund.getThree_month_rate());
							  fundDAO.threeMonthPrice(fund);
						  } else {
							  fund.setThree_month_rate(0);
							  System.out.println(fund.getThree_month_rate());
						  }
					  }
				  }
			  }  
		}
		*/
		
		return fundList;
	}

	
}
