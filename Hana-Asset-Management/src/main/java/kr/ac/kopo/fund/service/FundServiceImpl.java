package kr.ac.kopo.fund.service;

import java.util.ArrayList;
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
import kr.ac.kopo.fund.vo.RatioVO;

@Service
public class FundServiceImpl implements FundService{

	@Autowired
	private FundDAO fundDAO;
	
	@Override
	public List<FundVO> fundList() {
		
		List<FundVO> fundList = fundDAO.fundList();
		
		//펀드 위험분석 비율 담을 VO
		RatioVO rateVO = new RatioVO();
		
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
//		      Iterator<Element> le3 = element.select("div[class=spot fund_deatil]>div[class=rate_info]>table[class=no_info]>tbody>tr>td").iterator();
//		      Iterator<Element> le4 = element.select("div[class=section_analysis]>table[class=tbl_fund]>tbody>tr>td").iterator();
		      
		      
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
			  
			 /*
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
			  
			  rateVO.setFund_code(fund.getFund_code());
			  rateVO.setFund_name(fund.getFund_name());
		      
			  List<String> ratio = new ArrayList<String>();
			  while(le4.hasNext()) {
				  ratio.add(le4.next().text());
			  }
			  
			  System.out.println();
			  for(int i=0; i<ratio.size(); i++) {
				  if(ratio.get(i).equals("N/A")) {
					  ratio.set(i, "0");
				  }
				  if(i%14 != 0 && ratio.get(i).contains(",")) {
					  ratio.set(i, "0");
				  }
			  }
			  
			  for(int i=0; i<ratio.size(); i++) {
				  
				  if(i%14==0) {
					  rateVO.setType(ratio.get(i));
					  System.out.println(rateVO.toString());
					  fundDAO.rateInsert(rateVO);
				  }
				  if(i%14==1) {
					  rateVO.setThree_month_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==2) {
					  rateVO.setSix_month_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==3) {
					  rateVO.setOne_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==4) {
					  rateVO.setTwo_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==5) {
					  rateVO.setThree_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==6) {
					  rateVO.setFive_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==8) {
					  rateVO.setAvg_three_month_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==9) {
					  rateVO.setAvg_six_month_rate(Double.parseDouble(ratio.get(i)));;
				  }
				  if(i%14==10) {
					  rateVO.setAvg_one_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==11) {
					  rateVO.setAvg_two_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==12) {
					  rateVO.setAvg_three_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  if(i%14==13) {
					  rateVO.setAvg_five_year_rate(Double.parseDouble(ratio.get(i)));
				  }
				  
			  }
			  */
		}
		
		
		return fundList;
	}

	
}
