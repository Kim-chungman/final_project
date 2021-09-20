package kr.ac.kopo.portfolio.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.commons.math3.stat.descriptive.DescriptiveStatistics;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.ac.kopo.portfolio.dao.PortfolioDAO;
import kr.ac.kopo.portfolio.vo.AnalysisVO;
import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.MemberPortfolioVO;
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
	    if(portfolio.getDeposit() != 0) {
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
		
		List<DecidePortfolioVO> list = portfolioDAO.planSelect(portfolio);
		
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
	    
	    if(list.get(0).getFund_name()!=null) {
		    JSONObject category = new JSONObject();
		    category.put("v", list.get(0).getFund_name());
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", 25);
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(list.get(1).getFund_name()!=null) {
		    JSONObject category = new JSONObject();
		    category.put("v", list.get(1).getFund_name());
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", 10);
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(list.get(2).getFund_name()!=null) {
		    JSONObject category = new JSONObject();
		    category.put("v", list.get(2).getFund_name());
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", 15);
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(list.get(3).getFund_name()!=null) {
		    JSONObject category = new JSONObject();
		    category.put("v", list.get(3).getFund_name());
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", 20);
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(list.get(4).getFund_name()!=null) {
		    JSONObject category = new JSONObject();
		    category.put("v", list.get(4).getFund_name());
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", 20);
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    if(list.get(5).getFund_name()!=null) {
		    JSONObject category = new JSONObject();
		    category.put("v", list.get(5).getFund_name());
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", 10);
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
        
        data.put("rows", body);
		
		return data;
	}

	@Override
	public List<DecidePortfolioVO> getDecidePortfolio(PortfolioVO portfolio) {
		
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
				
				if(index_geometricMean>=avg_geometricMean) {
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
				
				if(index_geometricMean>=avg_geometricMean) {
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
				
				if(index_geometricMean>=avg_geometricMean) {
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
				
				if(index_geometricMean<=avg_geometricMean) {
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
				
				if(index_geometricMean>=avg_geometricMean) {
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
				
				if(index_geometricMean<=avg_geometricMean) {
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
			if(product.getOne_year_rate()<=0) {
				if(i!=0) i--;
			} else {
				planA.add(product);
			}
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
					if(deviation < 0) {
						if(recommend.getType().equals("매우낮은위험")) {
							deviation = deviation - (1.1*deviation);
						} else if(recommend.getType().equals("낮은위험")) {
							deviation = deviation - (1.4*deviation);
						} else if(recommend.getType().equals("보통위험")) {
							deviation = deviation - (1.5*deviation);
						} else if(recommend.getType().equals("다소높은위험")) {
							deviation = deviation - (1.6*deviation);
						} else if(recommend.getType().equals("높은위험")) {
							deviation = deviation - (1.6*deviation);
						} else if(recommend.getType().equals("매우높은위험")) {
							deviation = deviation - (1.6*deviation);
						}
					}
					break;
				}
			}
			stats.addValue(recommend.getOne_year_rate()+deviation+0.5);
			stats2.addValue(deviation+0.3);
		}
		double rate = stats.getGeometricMean();
		double totalDeviation = stats2.getGeometricMean();
		System.out.println("1년 예상수익률 : " + rate + "% 입니다.");
		System.out.println("변동성 : " + totalDeviation + "% 입니다.");
		
		for(AnalysisVO recommend : planA) {
			DecidePortfolioVO decide = new DecidePortfolioVO();
			decide.setFund_code(recommend.getFund_code());
			decide.setFund_company(recommend.getFund_company());
			decide.setFund_name(recommend.getFund_name());
			decide.setType(recommend.getType());
			decide.setTotal_asset(recommend.getTotal_asset());
			decide.setPresent_price(recommend.getPresent_price());
			decide.setOne_month_rate(recommend.getOne_month_rate());
			decide.setThree_month_rate(recommend.getThree_month_rate());
			decide.setSix_month_rate(recommend.getSix_month_rate());
			decide.setOne_year_rate(recommend.getOne_year_rate());
			decide.setRate(rate);
			decide.setTotal_deviation(totalDeviation);
			if(planA.get(0).getFund_code().equals(recommend.getFund_code())) {
				decide.setRatio(10);
			}
			if(planA.get(1).getFund_code().equals(recommend.getFund_code())) {
				decide.setRatio(20);
			}
			if(planA.get(2).getFund_code().equals(recommend.getFund_code())) {
				decide.setRatio(20);
			}
			if(planA.get(3).getFund_code().equals(recommend.getFund_code())) {
				decide.setRatio(15);
			}
			if(planA.get(4).getFund_code().equals(recommend.getFund_code())) {
				decide.setRatio(10);
			}
			if(planA.get(5).getFund_code().equals(recommend.getFund_code())) {
				decide.setRatio(25);
			}
			decide.setMember_id(portfolio.getMember_id());
			portfolioDAO.planInsert(decide);
			
		}
		
		MemberPortfolioVO memberFile = new MemberPortfolioVO();
		memberFile.setProduct1(planA.get(0).getFund_name());
		memberFile.setProduct2(planA.get(1).getFund_name());
		memberFile.setProduct3(planA.get(2).getFund_name());
		memberFile.setProduct4(planA.get(3).getFund_name());
		memberFile.setProduct5(planA.get(4).getFund_name());
		memberFile.setProduct6(planA.get(5).getFund_name());
		memberFile.setMember_id(portfolio.getMember_id());
		portfolioDAO.protfolioInsert(memberFile);
		
		List<DecidePortfolioVO> list = portfolioDAO.planSelect(portfolio);
		
		return list;
	}
	
}
