package kr.ac.kopo.retire.service;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import kr.ac.kopo.retire.vo.RetireVO;

@Service
public class RetireServiceImpl implements RetireService{

	@Override
	public RetireVO pensionCalc(RetireVO retire) {
		
		// 소득기간
		int age = retire.getExpectMyRetire() - retire.getMyAge();
		
		// 필요한 년수
		int num = retire.getExpectMyAge() - retire.getExpectMyRetire();
		
		// 필요자금(FV)
		int total = 0;
		int money = retire.getExpectLiving()*12;		// 고정금액
		int totalMoney = (money*80)/100;
		double rate = retire.getRate();
		for(int i=1; i<=70-retire.getExpectMyRetire(); i++) {
			money = (int)(money + (money * rate)/100);
			System.out.println(i + "년후 : " + money);
		}
		money = money*(70-retire.getExpectMyRetire());
		
		for(int i=1; i<=retire.getExpectMyAge()-70; i++) {
			totalMoney = (int)(totalMoney + (totalMoney * rate)/100);	
		}
		totalMoney = totalMoney*(retire.getExpectMyAge()-70);
		
		total = money + totalMoney;
		System.out.println("총 필요금액(FV) : " + total + "만원입니다.");
		retire.setFv(total);
		
		// 필요자금(PV)
		int pv = total;
		for(int i=1; i<age; i++) {
			pv = (int)(pv/rate);
		}
		System.out.println("총 필요금액(PV) : " + pv + "만원입니다.");
		retire.setPv(pv);
		
		// 현재 준비액
		int asset = retire.getPrivatePension()+retire.getRetireAccumulated();
		System.out.println("보유자산 : " + asset);
		int saving = (retire.getMonthSaving()+retire.getMonthSaving2())*12*age;
		System.out.println("월 적금액 : "+saving);
		int pension = retire.getMyExpectIncome()*12*num;
		System.out.println("연금 합 : " + pension);
		for(int i = 1; i<age; i++) {
			saving = (int)(saving + (saving * rate)/100);
		}
		
		// 준비된 금액(FV)
		int prepare = asset + saving + pension;
		System.out.println("준비된 금액(FV) : " + prepare);
		retire.setPrepareMoney(prepare);
		
		// 준비된 금액(PV)
		int present = prepare;
		for(int i=1; i<=age; i++) {
			present = (int)(present/rate);
		}
		System.out.println("준비된 금액(PV) : " + present);
		retire.setNeedMoney(present);
		
		return retire;
	}

	@Override
	public JSONObject getChartData(RetireVO portfolio) {
		
		JSONObject data = new JSONObject();
	     
	    JSONObject col1 = new JSONObject();
	    JSONObject col2 = new JSONObject();
	    JSONObject col3 = new JSONObject();
		
	    JSONArray title = new JSONArray();
	      
		col1.put("label", "필요/준비자금");
		col1.put("type", "string");
		col2.put("label", "구성비");
		col2.put("type", "number");
	    
		title.add(col1);
	    title.add(col2);
		
	    data.put("cols", title);
	    
	    JSONArray body = new JSONArray();
	    
	    if(portfolio.getFv() != 0) {
		    JSONObject category = new JSONObject();
		    category.put("v", "준비자금");
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", portfolio.getPrepareMoney());
		    
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    
	    if(portfolio.getPv() != 0) {
		    JSONObject category = new JSONObject();
		    category.put("v", "부족자금");
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", portfolio.getMonthSaving());
		    
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

	
	
}
