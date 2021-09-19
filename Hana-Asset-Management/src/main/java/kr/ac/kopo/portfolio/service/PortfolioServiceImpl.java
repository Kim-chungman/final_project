package kr.ac.kopo.portfolio.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.commons.math3.stat.descriptive.DescriptiveStatistics;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.portfolio.dao.PortfolioDAO;
import kr.ac.kopo.portfolio.vo.AnalysisVO;
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
		
		List<AnalysisVO> analysis = portfolioDAO.getPortfolioData(portfolio);
		List<AnalysisVO> plan = new ArrayList<AnalysisVO>();
		List<AnalysisVO> stand = new ArrayList<AnalysisVO>();
		
		for(AnalysisVO index : analysis) {
			
			if(index.getInvestment_index().equals("표준편차(%)") && portfolio.getSd()!=null) {
				
				stand.add(index);
				
				DescriptiveStatistics stats = new DescriptiveStatistics();
				stats.addValue(index.getIndex_three_month_rate()+1);
				stats.addValue(index.getIndex_six_month_rate()+1);
				stats.addValue(index.getIndex_one_year_rate()+1);
				stats.addValue(index.getIndex_two_year_rate()+1);
				stats.addValue(index.getIndex_three_year_rate()+1);
				stats.addValue(index.getIndex_five_year_rate()+1);
				double index_geometricMean = stats.getGeometricMean();
				
				DescriptiveStatistics stats2 = new DescriptiveStatistics();
				stats2.addValue(index.getAvg_three_month_rate()+1);
				stats2.addValue(index.getAvg_six_month_rate()+1);
				stats2.addValue(index.getAvg_one_year_rate()+1);
				stats2.addValue(index.getAvg_two_year_rate()+1);
				stats2.addValue(index.getAvg_three_year_rate()+1);
				stats2.addValue(index.getAvg_five_year_rate()+1);
				double avg_geometricMean = stats2.getGeometricMean();
				
				if(index_geometricMean>avg_geometricMean) {
					plan.add(index);
				}
			}
			
			if(index.getInvestment_index().equals("젠센의 알파(%)") && portfolio.getSd()!=null) {
				
				DescriptiveStatistics stats = new DescriptiveStatistics();
				stats.addValue(index.getIndex_three_month_rate()+1);
				stats.addValue(index.getIndex_six_month_rate()+1);
				stats.addValue(index.getIndex_one_year_rate()+1);
				stats.addValue(index.getIndex_two_year_rate()+1);
				stats.addValue(index.getIndex_three_year_rate()+1);
				stats.addValue(index.getIndex_five_year_rate()+1);
				double index_geometricMean = stats.getGeometricMean();
				
				DescriptiveStatistics stats2 = new DescriptiveStatistics();
				stats2.addValue(index.getAvg_three_month_rate()+1);
				stats2.addValue(index.getAvg_six_month_rate()+1);
				stats2.addValue(index.getAvg_one_year_rate()+1);
				stats2.addValue(index.getAvg_two_year_rate()+1);
				stats2.addValue(index.getAvg_three_year_rate()+1);
				stats2.addValue(index.getAvg_five_year_rate()+1);
				double avg_geometricMean = stats2.getGeometricMean();
				
				if(index_geometricMean>avg_geometricMean) {
					plan.add(index);
				}
			}
			
			if(index.getInvestment_index().equals("Sharpe Ratio") && portfolio.getSd()!=null) {
				
				DescriptiveStatistics stats = new DescriptiveStatistics();
				stats.addValue(index.getIndex_three_month_rate()+1);
				stats.addValue(index.getIndex_six_month_rate()+1);
				stats.addValue(index.getIndex_one_year_rate()+1);
				stats.addValue(index.getIndex_two_year_rate()+1);
				stats.addValue(index.getIndex_three_year_rate()+1);
				stats.addValue(index.getIndex_five_year_rate()+1);
				double index_geometricMean = stats.getGeometricMean();
				
				DescriptiveStatistics stats2 = new DescriptiveStatistics();
				stats2.addValue(index.getAvg_three_month_rate()+1);
				stats2.addValue(index.getAvg_six_month_rate()+1);
				stats2.addValue(index.getAvg_one_year_rate()+1);
				stats2.addValue(index.getAvg_two_year_rate()+1);
				stats2.addValue(index.getAvg_three_year_rate()+1);
				stats2.addValue(index.getAvg_five_year_rate()+1);
				double avg_geometricMean = stats2.getGeometricMean();
				
				if(index_geometricMean>avg_geometricMean) {
					plan.add(index);
				}
			}
			
			if(index.getInvestment_index().equals("트래킹에러(TE, %)") && portfolio.getSd()!=null) {
				
				DescriptiveStatistics stats = new DescriptiveStatistics();
				stats.addValue(index.getIndex_three_month_rate()+1);
				stats.addValue(index.getIndex_six_month_rate()+1);
				stats.addValue(index.getIndex_one_year_rate()+1);
				stats.addValue(index.getIndex_two_year_rate()+1);
				stats.addValue(index.getIndex_three_year_rate()+1);
				stats.addValue(index.getIndex_five_year_rate()+1);
				double index_geometricMean = stats.getGeometricMean();
				
				DescriptiveStatistics stats2 = new DescriptiveStatistics();
				stats2.addValue(index.getAvg_three_month_rate()+1);
				stats2.addValue(index.getAvg_six_month_rate()+1);
				stats2.addValue(index.getAvg_one_year_rate()+1);
				stats2.addValue(index.getAvg_two_year_rate()+1);
				stats2.addValue(index.getAvg_three_year_rate()+1);
				stats2.addValue(index.getAvg_five_year_rate()+1);
				double avg_geometricMean = stats2.getGeometricMean();
				
				if(index_geometricMean>avg_geometricMean) {
					plan.add(index);
				}
			}
			
			if(index.getInvestment_index().equals("정보비율(IR)") && portfolio.getSd()!=null) {
				
				DescriptiveStatistics stats = new DescriptiveStatistics();
				stats.addValue(index.getIndex_three_month_rate()+1);
				stats.addValue(index.getIndex_six_month_rate()+1);
				stats.addValue(index.getIndex_one_year_rate()+1);
				stats.addValue(index.getIndex_two_year_rate()+1);
				stats.addValue(index.getIndex_three_year_rate()+1);
				stats.addValue(index.getIndex_five_year_rate()+1);
				double index_geometricMean = stats.getGeometricMean();
				
				DescriptiveStatistics stats2 = new DescriptiveStatistics();
				stats2.addValue(index.getAvg_three_month_rate()+1);
				stats2.addValue(index.getAvg_six_month_rate()+1);
				stats2.addValue(index.getAvg_one_year_rate()+1);
				stats2.addValue(index.getAvg_two_year_rate()+1);
				stats2.addValue(index.getAvg_three_year_rate()+1);
				stats2.addValue(index.getAvg_five_year_rate()+1);
				double avg_geometricMean = stats2.getGeometricMean();
				
				if(index_geometricMean>avg_geometricMean) {
					plan.add(index);
				}
			}
			
			if(index.getInvestment_index().equals("BM민감도(B)") && portfolio.getSd()!=null) {
				
				DescriptiveStatistics stats = new DescriptiveStatistics();
				stats.addValue(index.getIndex_three_month_rate()+1);
				stats.addValue(index.getIndex_six_month_rate()+1);
				stats.addValue(index.getIndex_one_year_rate()+1);
				stats.addValue(index.getIndex_two_year_rate()+1);
				stats.addValue(index.getIndex_three_year_rate()+1);
				stats.addValue(index.getIndex_five_year_rate()+1);
				double index_geometricMean = stats.getGeometricMean();
				
				DescriptiveStatistics stats2 = new DescriptiveStatistics();
				stats2.addValue(index.getAvg_three_month_rate()+1);
				stats2.addValue(index.getAvg_six_month_rate()+1);
				stats2.addValue(index.getAvg_one_year_rate()+1);
				stats2.addValue(index.getAvg_two_year_rate()+1);
				stats2.addValue(index.getAvg_three_year_rate()+1);
				stats2.addValue(index.getAvg_five_year_rate()+1);
				double avg_geometricMean = stats2.getGeometricMean();
				
				if(index_geometricMean>avg_geometricMean) {
					plan.add(index);
				}
			}
		}
		
		String code = "";
		String name = "";
		String company = "";
		for(int i = 0; i<plan.size(); i++) {
			
			if(code.equals(plan.get(i).getFund_code()) || name.contains(plan.get(i).getFund_name()) || company.equals(plan.get(i).getFund_company())) {
				plan.remove(i);
			} else {
				code = plan.get(i).getFund_code();
				name = plan.get(i).getFund_name();
				company = plan.get(i).getFund_company();
			}
			
		}
		
		List<AnalysisVO> planA = new ArrayList<AnalysisVO>();
		
		int num = 0;
		for(int i=0; i<6; i++) {
			double randomValue = Math.random();
			num = (int)(randomValue * plan.size()) -1;
			AnalysisVO product = plan.get(num);
			planA.add(product);
			for(int j=0; j<i; j++) {
				if(planA.get(j).getFund_company().equals(product.getFund_company())) {
					planA.remove(j);
					i--;
				}
			}
		}
		
		DescriptiveStatistics stats = new DescriptiveStatistics();
		DescriptiveStatistics stats2 = new DescriptiveStatistics();
		double deviation = 0;
		for(AnalysisVO recommend : planA) {
			System.out.println(recommend.toString());
			System.out.println(recommend.getOne_year_rate());
			for(int i=0; i<stand.size(); i++) {
				if(recommend.getFund_code().equals(stand.get(i).getFund_code())) {
					deviation = stand.get(i).getIndex_one_year_rate();
					if(deviation<0) {
						deviation -= 1.2*deviation;
					}
					break;
				}
			}
			stats.addValue(recommend.getOne_year_rate()+deviation+0.5);
			stats2.addValue(deviation);
		}
		double rate = stats.getGeometricMean();
		double totalDeviation = stats2.getGeometricMean();
		System.out.println("1년 예상수익률 : " + rate + "% 입니다.");
		System.out.println("변동성 : " + totalDeviation + "% 입니다.");
		
		return null;
	}
	
}
