package kr.ac.kopo.admin.service;


import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.admin.dao.AdminDAO;
import kr.ac.kopo.expense.dao.ExpenseDAO;
import kr.ac.kopo.expense.vo.ExpenseVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Autowired
	private ExpenseDAO chartDAO;
	
	@Override
	public JSONObject getCustomerData() {
		
		ExpenseVO list = adminDAO.getCustomerData();
		
		JSONObject data = new JSONObject();
	     
	    JSONObject col1 = new JSONObject();
	    JSONObject col2 = new JSONObject();
	    
	    JSONArray title = new JSONArray();
	    
	    col1.put("label", "월");
	    col1.put("type", "string");
	    col2.put("label", "지출액");
	    col2.put("type", "number");
	    
	    title.add(col1);
	    title.add(col2);
	    
	    data.put("cols", title);
	    
	    JSONArray body = new JSONArray();
	    
	       
		 if(list.getOct()!=0) {
			JSONObject month = new JSONObject();
			month.put("v", "10월");
			JSONObject oct = new JSONObject();
			oct.put("v", list.getOct());
	        
	        JSONArray row = new JSONArray();
	        row.add(month);
	        row.add(oct);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
		 }
		 
		 if(list.getNov()!=0) {
			JSONObject month = new JSONObject();
			month.put("v", "11월");
			JSONObject nov = new JSONObject();
			nov.put("v", list.getNov());
	        
	        JSONArray row = new JSONArray();
	        row.add(month);
	        row.add(nov);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
		 }
		 
		 if(list.getDec()!=0) {
			JSONObject month = new JSONObject();
			month.put("v", "12월");
			JSONObject dec = new JSONObject();
			dec.put("v", list.getDec());
	        
	        JSONArray row = new JSONArray();
	        row.add(month);
	        row.add(dec);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
		 } 
		  
		 if(list.getJan()!=0) {
		   JSONObject month = new JSONObject();
		   month.put("v", "1월");
		   JSONObject jan = new JSONObject();
	       jan.put("v", list.getJan());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(jan);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getFeb()!=0) {
			JSONObject month = new JSONObject();
			month.put("v", "2월");
			JSONObject feb = new JSONObject();
			feb.put("v", list.getFeb());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(feb);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getMar()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "3월");
			 JSONObject mar = new JSONObject();
			 mar.put("v", list.getMar());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(mar);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getApr()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "4월");
			 JSONObject apr = new JSONObject();
			 apr.put("v", list.getApr());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(apr);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getMay()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "5월");
			 JSONObject may = new JSONObject();
			 may.put("v", list.getMay());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(may);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getJun()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "6월");
			 JSONObject jun = new JSONObject();
			 jun.put("v", list.getJun());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(jun);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getJul()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "7월");
			 JSONObject jul = new JSONObject();
			 jul.put("v", list.getJul());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(jul);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getAug()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "8월");
			 JSONObject aug = new JSONObject();
			 aug.put("v", list.getAug());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(aug);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getSep()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "9월");
			 JSONObject sep = new JSONObject();
			 sep.put("v", list.getSep());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(sep);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
	    	 
	    
	    data.put("rows", body);
	    
	    return data;
	}

	@Override
	public JSONObject customerAge() {
		
		ExpenseVO list = adminDAO.customerAge();
		
		JSONObject data = new JSONObject();
	     
	    JSONObject col1 = new JSONObject();
	    JSONObject col2 = new JSONObject();
	    
	    JSONArray title = new JSONArray();
	    
	    col1.put("label", "연령대");
	    col1.put("type", "string");
	    col2.put("label", "구성비");
	    col2.put("type", "number");
	    
	    title.add(col1);
	    title.add(col2);
	    
	    data.put("cols", title);
	    
	    JSONArray body = new JSONArray();
	    
		 if(list.getJan()!=0) {
		   JSONObject month = new JSONObject();
		   month.put("v", "20대");
		   JSONObject jan = new JSONObject();
	       jan.put("v", list.getJan());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(jan);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getFeb()!=0) {
			JSONObject month = new JSONObject();
			month.put("v", "30대");
			JSONObject feb = new JSONObject();
			feb.put("v", list.getFeb());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(feb);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getMar()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "40대");
			 JSONObject mar = new JSONObject();
			 mar.put("v", list.getMar());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(mar);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getApr()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "50대");
			 JSONObject apr = new JSONObject();
			 apr.put("v", list.getApr());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(apr);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
		 
		 if(list.getMay()!=0) {
			 JSONObject month = new JSONObject();
			 month.put("v", "60대");
			 JSONObject may = new JSONObject();
			 may.put("v", list.getMay());
	       
	       JSONArray row = new JSONArray();
	       row.add(month);
	       row.add(may);
	       
	       JSONObject cell = new JSONObject();
	       cell.put("c", row);
	       body.add(cell);
		 }
	    
	    data.put("rows", body);
	    
	    return data;
	}

	@Override
	public JSONObject customerAvg(ExpenseVO expense) {
		
		JSONObject data = dataGet(4, expense);
		
		return data;
		
	}

	
public JSONObject dataGet(int no, ExpenseVO expense) {
		
		List<ExpenseVO> items = null;
		String msg = "";
		String num = "";
		int age = 0;
		
		num = chartDAO.ageData(expense);
		age = Integer.parseInt(num);
		
		switch(no) {
		
		case 1 :
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				num = "20대";
				items = chartDAO.ageChartData(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				num = "30대";
				items = chartDAO.ageChartData(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				num = "40대";
				items = chartDAO.ageChartData(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				num = "50대";
				items = chartDAO.ageChartData(expense);
			}
			msg = "지난 1달간 비교";
			break;
		case 2 :
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				num = "20대";
				items = chartDAO.ageChartData2(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				num = "30대";
				items = chartDAO.ageChartData2(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				num = "40대";
				items = chartDAO.ageChartData2(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				num = "50대";
				items = chartDAO.ageChartData2(expense);
			}
			msg = "지난 3달간 비교";
			break;
		case 3 :
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				num = "20대";
				items = chartDAO.ageChartData3(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				num = "30대";
				items = chartDAO.ageChartData3(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				num = "40대";
				items = chartDAO.ageChartData3(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				num = "50대";
				items = chartDAO.ageChartData3(expense);
			}
			msg = "지난 6달간 비교";
			break;
		case 4 :
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				num = "20대";
				items = chartDAO.ageChartData4(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				num = "30대";
				items = chartDAO.ageChartData4(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				num = "40대";
				items = chartDAO.ageChartData4(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				num = "50대";
				items = chartDAO.ageChartData4(expense);
			}
			msg = "지난 1년간 비교";
			break;
		}
		
		 
		
		  String[] type = new String[9];
		  int[] myage = new int[9];
		  int[] group = new int[9];
		  
		  for(int i=0; i<9; i++) {
			  
			  type[i] = items.get(i).getCategory();
			  myage[i] = items.get(i).getExpense();
			  group[i] = items.get(i).getJan();
			  
			  System.out.println(type[i] + " : 나 " + myage[i] +", 20대 " + group[i]);
		  }
		  
		  JSONObject data = new JSONObject();
	     
		  JSONObject col1 = new JSONObject();
	      JSONObject col2 = new JSONObject();
	      JSONObject col3 = new JSONObject();
	      
	      JSONArray title = new JSONArray();
	      
	      col1.put("label", "연령대별 자산");
	      col1.put("type", "string");
	      col2.put("label", "20대");
	      col2.put("type", "number");
	      col3.put("label", "30대");
	      col3.put("type", "number");
	      
	      title.add(col1);
	      title.add(col2);
	      title.add(col3);
	      
	      data.put("cols", title);
		  JSONArray body = new JSONArray();
		  
		  for(ExpenseVO list : items) {
	    	  
		    	 JSONObject category = new JSONObject();
		    	 JSONObject expensed = new JSONObject();
		    	 JSONObject jan = new JSONObject();
		    	 
		         switch(list.getCategory()) {
		         
		         case "ENTERTAINMENT_COST" :
		        	 list.setCategory("문화/오락");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "TRANSPORTATION_COST" :
		        	 list.setCategory("교통비");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "EDUCATIONAL_COST" :
		        	 list.setCategory("교육비");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "COMMUNICATION_COST" :
		        	 list.setCategory("통신비");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "FOOD_COST" :
		        	 list.setCategory("식비");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "HEALTH_CARE_COST" :
		        	 list.setCategory("의료비");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "INSURANCE_PREMIUM" :
		        	 list.setCategory("보험료");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "APPAREL_COST" :
		        	 list.setCategory("쇼핑/의류");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		         case "HOUSING_COST" :
		        	 list.setCategory("주거비");
		        	 category.put("v", list.getCategory());
			         
			         expensed.put("v", list.getExpense());
			         
			         jan.put("v", list.getJan());
			         
		        	 break;
		        	 
		         }
		         
		         JSONArray row = new JSONArray();
		         row.add(category);
		         row.add(expensed);
		         row.add(jan);
		         
		         JSONObject cell = new JSONObject();
		         cell.put("c", row);
		         body.add(cell);
	    	  
		      }
		  data.put("rows", body);
	 	     
	      return data;
	}
}
