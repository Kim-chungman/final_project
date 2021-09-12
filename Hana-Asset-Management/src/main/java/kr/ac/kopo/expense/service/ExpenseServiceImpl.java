package kr.ac.kopo.expense.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import kr.ac.kopo.expense.dao.ExpenseDAO;
import kr.ac.kopo.expense.vo.ExpenseVO;

@Service
public class ExpenseServiceImpl implements ExpenseService{

   @Inject
   private ExpenseDAO chartDAO;
   
   @Override
   public JSONObject getChartData(ExpenseVO expense) {
	   
      List<ExpenseVO> items = chartDAO.customerList(expense);
      
      JSONObject data = new JSONObject();
     
      JSONObject col1 = new JSONObject();
      JSONObject col2 = new JSONObject();
      JSONObject col3 = new JSONObject();
      JSONObject col4 = new JSONObject();
      JSONObject col5 = new JSONObject();
      JSONObject col6 = new JSONObject();
      JSONObject col7 = new JSONObject();
      JSONObject col8 = new JSONObject();
      JSONObject col9 = new JSONObject();
      JSONObject col10 = new JSONObject();
      JSONObject col11 = new JSONObject();
      JSONObject col12 = new JSONObject();
      JSONObject col13 = new JSONObject();
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "회원아이디");
      col1.put("type", "string");
      col2.put("label", "9월");
      col2.put("type", "number");
      col3.put("label", "10월");
      col3.put("type", "number");
      col4.put("label", "11월");
      col4.put("type", "number");
      col5.put("label", "12월");
      col5.put("type", "number");
      col6.put("label", "1월");
      col6.put("type", "number");
      col7.put("label", "2월");
      col7.put("type", "number");
      col8.put("label", "3월");
      col8.put("type", "number");
      col9.put("label", "4월");
      col9.put("type", "number");
      col10.put("label", "5월");
      col10.put("type", "number");
      col11.put("label", "6월");
      col11.put("type", "number");
      col12.put("label", "7월");
      col12.put("type", "number");
      col13.put("label", "8월");
      col13.put("type", "number");
      
      title.add(col1);
      title.add(col2);
      title.add(col3);
      title.add(col4);
      title.add(col5);
      title.add(col6);
      title.add(col7);
      title.add(col8);
      title.add(col9);
      title.add(col10);
      title.add(col11);
      title.add(col12);
      title.add(col13);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
         
         JSONObject memberId = new JSONObject();
         memberId.put("v", list.getMember_id()+"님의 최근 1년간 월간 지출액");
         
         JSONObject sep = new JSONObject();
         sep.put("v", list.getSep());
         
         JSONObject oct = new JSONObject();
         oct.put("v", list.getOct());
         
         JSONObject nov = new JSONObject();
         nov.put("v", list.getNov());
         
         JSONObject dec = new JSONObject();
         dec.put("v", list.getDec());
         
         JSONObject jan = new JSONObject();
         jan.put("v", list.getJan());
         
         JSONObject feb = new JSONObject();
         feb.put("v", list.getFeb());
         
         JSONObject mar = new JSONObject();
         mar.put("v", list.getMar());
         
         JSONObject apr = new JSONObject();
         apr.put("v", list.getApr());
         
         JSONObject may = new JSONObject();
         may.put("v", list.getMay());
         
         JSONObject jun = new JSONObject();
         jun.put("v", list.getJun());
         
         JSONObject jul = new JSONObject();
         jul.put("v", list.getJul());
         
         JSONObject aug = new JSONObject();
         aug.put("v", list.getAug());
         
         JSONArray row = new JSONArray();
         row.add(memberId);
         row.add(sep);
         row.add(oct);
         row.add(nov);
         row.add(dec);
         row.add(jan);
         row.add(feb);
         row.add(mar);
         row.add(apr);
         row.add(may);
         row.add(jun);
         row.add(jul);
         row.add(aug);
         
         JSONObject cell = new JSONObject();
         cell.put("c", row);
         body.add(cell);
         
      }
      data.put("rows", body);
      
      return data;
   }

	@Override
	public JSONObject getChartData2(ExpenseVO expense) {
		
      List<ExpenseVO> items = chartDAO.customerList2(expense);
      
      JSONObject data = new JSONObject();
     
      JSONObject col1 = new JSONObject();
      JSONObject col2 = new JSONObject();
      JSONObject col3 = new JSONObject();
      JSONObject col4 = new JSONObject();
      JSONObject col5 = new JSONObject();
      JSONObject col6 = new JSONObject();
      JSONObject col7 = new JSONObject();
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "회원아이디");
      col1.put("type", "string");
      col2.put("label", "3월");
      col2.put("type", "number");
      col3.put("label", "4월");
      col3.put("type", "number");
      col4.put("label", "5월");
      col4.put("type", "number");
      col5.put("label", "6월");
      col5.put("type", "number");
      col6.put("label", "7월");
      col6.put("type", "number");
      col7.put("label", "8월");
      col7.put("type", "number");
      
      title.add(col1);
      title.add(col2);
      title.add(col3);
      title.add(col4);
      title.add(col5);
      title.add(col6);
      title.add(col7);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
         
         JSONObject memberId = new JSONObject();
         memberId.put("v", list.getMember_id()+"님의 최근 6개월간 월간 지출액");
         
         JSONObject mar = new JSONObject();
         mar.put("v", list.getMar());
         
         JSONObject apr = new JSONObject();
         apr.put("v", list.getApr());
         
         JSONObject may = new JSONObject();
         may.put("v", list.getMay());
         
         JSONObject jun = new JSONObject();
         jun.put("v", list.getJun());
         
         JSONObject jul = new JSONObject();
         jul.put("v", list.getJul());
         
         JSONObject aug = new JSONObject();
         aug.put("v", list.getAug());
         
         JSONArray row = new JSONArray();
         row.add(memberId);
         row.add(mar);
         row.add(apr);
         row.add(may);
         row.add(jun);
         row.add(jul);
         row.add(aug);
         
         JSONObject cell = new JSONObject();
         cell.put("c", row);
         body.add(cell);
         
      }
      data.put("rows", body);
      
      return data;

	
	}

	@Override
	public JSONObject getChartData3(ExpenseVO expense) {
		
      List<ExpenseVO> items = chartDAO.customerList3(expense);
      
      JSONObject data = new JSONObject();
     
      JSONObject col1 = new JSONObject();
      JSONObject col2 = new JSONObject();
      JSONObject col3 = new JSONObject();
      JSONObject col4 = new JSONObject();
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "회원아이디");
      col1.put("type", "string");
      col2.put("label", "6월");
      col2.put("type", "number");
      col3.put("label", "7월");
      col3.put("type", "number");
      col4.put("label", "8월");
      col4.put("type", "number");
      
      title.add(col1);
      title.add(col2);
      title.add(col3);
      title.add(col4);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
         
         JSONObject memberId = new JSONObject();
         memberId.put("v", list.getMember_id()+"님의 최근 3개월간 월간 지출액");
         
         JSONObject jun = new JSONObject();
         jun.put("v", list.getJun());
         
         JSONObject jul = new JSONObject();
         jul.put("v", list.getJul());
         
         JSONObject aug = new JSONObject();
         aug.put("v", list.getAug());
         
         JSONArray row = new JSONArray();
         row.add(memberId);
         row.add(jun);
         row.add(jul);
         row.add(aug);
         
         JSONObject cell = new JSONObject();
         cell.put("c", row);
         body.add(cell);
         
      }
      data.put("rows", body);
      
      return data;
	      
	}

	@Override
	public JSONObject getpieChartData(ExpenseVO expense) {
		
	  JSONObject data = dataGet(1, expense);
      
	  return data;
		
	}

	@Override
	public JSONObject getpieChartData2(ExpenseVO expense) {

		JSONObject data = dataGet(2, expense);
		
		return data;
	      
	}

	@Override
	public JSONObject getpieChartData3(ExpenseVO expense) {

		JSONObject data = dataGet(3, expense);
		
		return data;
		
	}

	@Override
	public JSONObject getpieChartData4(ExpenseVO expense) {

		JSONObject data = dataGet(4, expense);
		
		return data;
	}
	
	public JSONObject dataGet(int no, ExpenseVO expense) {
		
		List<ExpenseVO> items = null;
		String msg = "";
		switch(no) {
		
		case 1 :
			items = chartDAO.pieChartData(expense);
			msg = "지난 1달간";
			break;
		case 2 :
			items = chartDAO.pieChartData2(expense);
			msg = "지난 3달간";
			break;
		case 3 :
			items = chartDAO.pieChartData3(expense);
			msg = "지난 6달간";
			break;
		case 4 :
			items = chartDAO.pieChartData4(expense);
			msg = "지난 1년간";
			break;
		}
		
		JSONObject data = new JSONObject();
	     
	      JSONObject col1 = new JSONObject();
	      JSONObject col2 = new JSONObject();
	      
	      JSONArray title = new JSONArray();
	      
	      col1.put("label", "카테고리");
	      col1.put("type", "string");
	      col2.put("label", msg);
	      col2.put("type", "number");
	      
	      title.add(col1);
	      title.add(col2);
	      
	      data.put("cols", title);
	      
	      JSONArray body = new JSONArray();
	      for(ExpenseVO list : items) {
	         
	         JSONObject category = new JSONObject();
	         
	         switch(list.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 list.setCategory("문화/오락");
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 list.setCategory("교통비");
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 list.setCategory("교육비");
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 list.setCategory("통신비");
	        	 break;
	         case "FOOD_COST" :
	        	 list.setCategory("식비");
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 list.setCategory("의료비");
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 list.setCategory("보험료");
	        	 break;
	         case "APPAREL_COST" :
	        	 list.setCategory("쇼핑/의류");
	        	 break;
	         case "HOUSING_COST" :
	        	 list.setCategory("주거비");
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 list.setCategory("적금");
	        	 break;
	        	 
	         }
	         category.put("v", list.getCategory());
	         
	         JSONObject expensed = new JSONObject();
	         expensed.put("v", list.getExpense());
	         
	         JSONArray row = new JSONArray();
	         row.add(category);
	         row.add(expensed);
	         
	         JSONObject cell = new JSONObject();
	         cell.put("c", row);
	         body.add(cell);
	         
	      }
	      data.put("rows", body);
	     
	      return data;
		
	}

	@Override
	public JSONObject getageChartData(ExpenseVO expense) {
		
		JSONObject data = ageDataGet(1, expense);
		
		return data;
	}
	
	public JSONObject ageDataGet(int no, ExpenseVO expense) {
		
		List<ExpenseVO> items = null;
		String msg = "";
		String num = "";
		int age = 0;
		switch(no) {
		
		case 1 :
			num = chartDAO.ageData(expense);
			age = Integer.parseInt(num);
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				items = chartDAO.ageChartData(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				items = chartDAO.ageChartData(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				items = chartDAO.ageChartData(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				items = chartDAO.ageChartData(expense);
			}
			msg = "지난 1달간";
			break;
		case 2 :
			num = chartDAO.ageData(expense);
			age = Integer.parseInt(num);
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				items = chartDAO.ageChartData2(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				items = chartDAO.ageChartData2(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				items = chartDAO.ageChartData2(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				items = chartDAO.ageChartData2(expense);
			}
			msg = "지난 3달간";
			break;
		case 3 :
			num = chartDAO.ageData(expense);
			age = Integer.parseInt(num);
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				items = chartDAO.ageChartData3(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				items = chartDAO.ageChartData3(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				items = chartDAO.ageChartData3(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				items = chartDAO.ageChartData3(expense);
			}
			msg = "지난 6달간";
			break;
		case 4 :
			num = chartDAO.ageData(expense);
			age = Integer.parseInt(num);
			if(age>92) {
				expense.setStart("93-01-01");
				expense.setLast("99-12-31");
				items = chartDAO.ageChartData4(expense);
			} else if(age>=83 && age <= 92) {
				expense.setStart("83-01-01");
				expense.setLast("92-12-31");
				items = chartDAO.ageChartData4(expense);
			} else if(age>=73 && age <= 82) {
				expense.setStart("73-01-01");
				expense.setLast("82-12-31");
				items = chartDAO.ageChartData4(expense);
			} else if(age>=63 && age <= 72) {
				expense.setStart("63-01-01");
				expense.setLast("72-12-31");
				items = chartDAO.ageChartData4(expense);
			}
			msg = "지난 1년간";
			break;
		
		}
		
		JSONObject data = new JSONObject();
	     
	      JSONObject col1 = new JSONObject();
	      JSONObject col2 = new JSONObject();
	      
	      JSONArray title = new JSONArray();
	      
	      col1.put("label", "카테고리");
	      col1.put("type", "string");
	      col2.put("label", msg);
	      col2.put("type", "number");
	      
	      title.add(col1);
	      title.add(col2);
	      
	      data.put("cols", title);
	      
	      JSONArray body = new JSONArray();
	      for(ExpenseVO list : items) {
	         
	         JSONObject category = new JSONObject();
	         
	         switch(list.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 list.setCategory("문화/오락");
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 list.setCategory("교통비");
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 list.setCategory("교육비");
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 list.setCategory("통신비");
	        	 break;
	         case "FOOD_COST" :
	        	 list.setCategory("식비");
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 list.setCategory("의료비");
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 list.setCategory("보험료");
	        	 break;
	         case "APPAREL_COST" :
	        	 list.setCategory("쇼핑/의류");
	        	 break;
	         case "HOUSING_COST" :
	        	 list.setCategory("주거비");
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 list.setCategory("적금");
	        	 break;
	        	 
	         }
	         category.put("v", list.getCategory());
	         
	         JSONObject expensed = new JSONObject();
	         expensed.put("v", list.getExpense());
	         
	         JSONArray row = new JSONArray();
	         row.add(category);
	         row.add(expensed);
	         
	         JSONObject cell = new JSONObject();
	         cell.put("c", row);
	         body.add(cell);
	         
	      }
	      data.put("rows", body);
	     
	      return data;
		
	}

	@Override
	public JSONObject getageChartData2(ExpenseVO expense) {

		JSONObject data = ageDataGet(2, expense);
		
		return data;
		
	}

	@Override
	public JSONObject getageChartData3(ExpenseVO expense) {

		JSONObject data = ageDataGet(3, expense);
		
		return data;
		
	}

	@Override
	public JSONObject getageChartData4(ExpenseVO expense) {
		
		JSONObject data = ageDataGet(4, expense);
		
		return data;
	}

	@Override
	public List<ExpenseVO> getMyData(ExpenseVO expense) {
		
		List<ExpenseVO> myData = chartDAO.getMyData(expense);
		
		for(ExpenseVO list : myData) {
	       
	         switch(list.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 list.setCategory("문화/오락");
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 list.setCategory("교통비");
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 list.setCategory("교육비");
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 list.setCategory("통신비");
	        	 break;
	         case "FOOD_COST" :
	        	 list.setCategory("식비");
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 list.setCategory("의료비");
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 list.setCategory("보험료");
	        	 break;
	         case "APPAREL_COST" :
	        	 list.setCategory("쇼핑/의류");
	        	 break;
	         case "HOUSING_COST" :
	        	 list.setCategory("주거비");
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 list.setCategory("적금");
	        	 break;
	        	 
	         }
	         
	      }
		
		return myData;
	}

	@Override
	public String ageData(ExpenseVO expense) {
		
		String num = chartDAO.ageData(expense);
		int age = Integer.parseInt(num);
		if(age>92) {
			num="20대";
		} else if(age>=83 && age <= 92) {
			num="30대";
		} else if(age>=73 && age <= 82) {
			num="40대";
		} else if(age>=63 && age <= 72) {
			num="50대";
		}
		
		return num;
	}

	@Override
	public List<ExpenseVO> getyourData(ExpenseVO expense) {
		
		String num = chartDAO.ageData(expense);
		int age = Integer.parseInt(num);
		if(age>92) {
			expense.setStart("93-01-01");
			expense.setLast("99-12-31");
		} else if(age>=83 && age <= 92) {
			expense.setStart("83-01-01");
			expense.setLast("92-12-31");
		} else if(age>=73 && age <= 82) {
			expense.setStart("73-01-01");
			expense.setLast("82-12-31");
		} else if(age>=63 && age <= 72) {
			expense.setStart("63-01-01");
			expense.setLast("72-12-31");
		}
		
		List<ExpenseVO> yourData = chartDAO.getYourData(expense);
		
		for(ExpenseVO list : yourData) {
	       
	         switch(list.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 list.setCategory("문화/오락");
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 list.setCategory("교통비");
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 list.setCategory("교육비");
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 list.setCategory("통신비");
	        	 break;
	         case "FOOD_COST" :
	        	 list.setCategory("식비");
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 list.setCategory("의료비");
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 list.setCategory("보험료");
	        	 break;
	         case "APPAREL_COST" :
	        	 list.setCategory("쇼핑/의류");
	        	 break;
	         case "HOUSING_COST" :
	        	 list.setCategory("주거비");
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 list.setCategory("적금");
	        	 break;
	        	 
	         }
	         
	      }
		
		return yourData;
		
	}
   
}