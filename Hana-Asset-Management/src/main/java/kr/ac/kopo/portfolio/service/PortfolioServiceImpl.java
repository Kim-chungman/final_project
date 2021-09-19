package kr.ac.kopo.portfolio.service;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.portfolio.dao.PortfolioDAO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Service
public class PortfolioServiceImpl implements PortfolioService {

	@Inject
	private PortfolioDAO portfolioDAO;
	
	@Override
	public JSONObject getChartData(PortfolioVO portfolio) {

		JSONObject data = new JSONObject();
	     
	    JSONObject col1 = new JSONObject();
	    JSONObject col2 = new JSONObject();
		
	    JSONArray title = new JSONArray();
	      
		col1.put("label", "종목");
		col1.put("type", "string");
		col2.put("label", "구성비");
		col2.put("type", "number");
	    
		title.add(col1);
	    title.add(col2);
		
	    data.put("cols", title);
	    
	    JSONArray body = new JSONArray();
	    
	    if(portfolio.getFund() != 0) {
		    JSONObject category = new JSONObject();
		    category.put("v", "펀드");
	        JSONObject fund = new JSONObject();
	        fund.put("v", portfolio.getFund());
	        
	        JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(fund);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(portfolio.getFund() != 0) {
	    	JSONObject category = new JSONObject();
		    category.put("v", "예금");
	    	JSONObject deposit = new JSONObject();
	    	deposit.put("v", portfolio.getDeposit());
	    	
	    	JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(deposit);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(portfolio.getSaving() != 0) {
	    	JSONObject category = new JSONObject();
		    category.put("v", "적금");
		    JSONObject saving = new JSONObject();
	        saving.put("v", portfolio.getSaving());
	    	
	    	JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(saving);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(portfolio.getPension() != 0) {
	    	JSONObject category = new JSONObject();
		    category.put("v", "연금");
		    JSONObject pension = new JSONObject();
	        pension.put("v", portfolio.getPension());
	    	
	    	JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(pension);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
        
        data.put("rows", body);
        
		return data;
	}

	@Override
	public JSONObject getPortfolioData(PortfolioVO portfolio) {
		
		
		
		return null;
	}
	
}
