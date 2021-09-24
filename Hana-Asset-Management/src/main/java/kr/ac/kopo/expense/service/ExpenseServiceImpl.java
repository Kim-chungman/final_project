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
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "월");
      col1.put("type", "string");
      col2.put("label", "지출액");
      col2.put("type", "number");
      
      
      title.add(col1);
      title.add(col2);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
         
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
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "월");
      col1.put("type", "string");
      col2.put("label", "지출액");
      col2.put("type", "number");
      
      
      title.add(col1);
      title.add(col2);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
    	 

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
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "월");
      col1.put("type", "string");
      col2.put("label", "지출액");
      col2.put("type", "number");
      
      
      title.add(col1);
      title.add(col2);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
    	 
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
	      
	      col1.put("label", "또래와의 비교");
	      col1.put("type", "string");
	      col2.put("label", "김하나님");
	      col2.put("type", "number");
	      col3.put("label", num);
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
		  /*
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
	      
	      JSONArray title = new JSONArray();
	      
	      col1.put("label", "또래와의 비교");
	      col1.put("type", "string");
	      col2.put("label", type[0]);
	      col2.put("type", "number");
	      col3.put("label", type[1]);
	      col3.put("type", "number");
	      col4.put("label", type[2]);
	      col4.put("type", "number");
	      col5.put("label", type[3]);
	      col5.put("type", "number");
	      col6.put("label", type[4]);
	      col6.put("type", "number");
	      col7.put("label", type[5]);
	      col7.put("type", "number");
	      col8.put("label", type[6]);
	      col8.put("type", "number");
	      col9.put("label", type[7]);
	      col9.put("type", "number");
	      col10.put("label", type[8]);
	      col10.put("type", "number");
	      
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
	      
	      data.put("cols", title);
	      
	      JSONArray body = new JSONArray();
	      
	      if(myage[0]!=0) {
	    	  JSONObject category = new JSONObject();
		      JSONObject expense1 = new JSONObject();
		      JSONObject expense2 = new JSONObject();
		      JSONObject expense3 = new JSONObject();
		      JSONObject expense4 = new JSONObject();
		      JSONObject expense5 = new JSONObject();
		      JSONObject expense6 = new JSONObject();
		      JSONObject expense7 = new JSONObject();
		      JSONObject expense8 = new JSONObject();
		      JSONObject expense9 = new JSONObject();
	    	  
		      category.put("v", "김하나님");
		      expense1.put("v", myage[0]); 
		      expense2.put("v", myage[1]);
		      expense3.put("v", myage[2]);
		      expense4.put("v", myage[3]);
		      expense5.put("v", myage[4]);
		      expense6.put("v", myage[5]);
		      expense7.put("v", myage[6]);
		      expense8.put("v", myage[7]);
		      expense9.put("v", myage[8]);
		      
		      JSONArray row = new JSONArray();
	          row.add(category);
	          row.add(expense1);
	          row.add(expense2);
	          row.add(expense3);
	          row.add(expense4);
	          row.add(expense5);
	          row.add(expense6);
	          row.add(expense7);
	          row.add(expense8);
	          row.add(expense9);
	         
	          JSONObject cell = new JSONObject();
	          cell.put("c", row);
	          body.add(cell);
	      }

	      if(group[0] != 0) {
	    	  JSONObject category = new JSONObject();
		      JSONObject expense1 = new JSONObject();
		      JSONObject expense2 = new JSONObject();
		      JSONObject expense3 = new JSONObject();
		      JSONObject expense4 = new JSONObject();
		      JSONObject expense5 = new JSONObject();
		      JSONObject expense6 = new JSONObject();
		      JSONObject expense7 = new JSONObject();
		      JSONObject expense8 = new JSONObject();
		      JSONObject expense9 = new JSONObject();
	    	  
		      category.put("v", num);
		      expense1.put("v", group[0]);
		      expense2.put("v", group[1]);
		      expense3.put("v", group[2]);
		      expense4.put("v", group[3]);
		      expense5.put("v", group[4]);
		      expense6.put("v", group[5]);
		      expense7.put("v", group[6]);
		      expense8.put("v", group[7]);
		      expense9.put("v", group[8]);
		      
		      JSONArray row2 = new JSONArray();
	          row2.add(category);
	          row2.add(expense1);
	          row2.add(expense2);
	          row2.add(expense3);
	          row2.add(expense4);
	          row2.add(expense5);
	          row2.add(expense6);
	          row2.add(expense7);
	          row2.add(expense8);
	          row2.add(expense9);
	         
	          JSONObject cell2 = new JSONObject();
	          cell2.put("c", row2);
	          body.add(cell2);
	      }
	      */
	      
	      /*
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
	      */
	      
//	      data.put("rows", body);
		     
//	      return data;
	      
		  /*
	      JSONObject col1 = new JSONObject();
	      JSONObject col2 = new JSONObject();
	      JSONObject col3 = new JSONObject();
	      
	      JSONArray title = new JSONArray();
	      
	      col1.put("label", "카테고리");
	      col1.put("type", "string");
	      col2.put("label", expense.getMember_id());
	      col2.put("type", "number");
	      col3.put("label", num);
	      col3.put("type", "number");
	      
	      title.add(col1);
	      title.add(col2);
	      title.add(col3);
	      
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
	         
	         JSONObject jan = new JSONObject();
	         jan.put("v", list.getJan());
	         
	         JSONArray row = new JSONArray();
	         row.add(category);
	         row.add(expensed);
	         row.add(jan);
	         
	         JSONObject cell = new JSONObject();
	         cell.put("c", row);
	         body.add(cell);
	         
	      }
	      */
		
		/*
		List<ExpenseVO> items = null;
		String msg = "";
		String num = "";
		int age = 0;
		
		num = chartDAO.ageData(expense);
		age = Integer.parseInt(num);
		
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
		*/
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

	@Override
	public List<ExpenseVO> getMonthExpense(ExpenseVO expense) {
		
		List<ExpenseVO> items = chartDAO.customerList(expense);
		
		return items;
	}

	@Override
	public List<ExpenseVO> getExpenseRank(String maxMonth, ExpenseVO expense) {
		
		List<ExpenseVO> items = null;
		
		switch(maxMonth) {
		
		case "1월" :
			items = chartDAO.janList(expense);
			break;
		case "2월" :
			items = chartDAO.febList(expense);
			break;
		case "3월" :
			items = chartDAO.marList(expense);
			break;
		case "4월" :
			items = chartDAO.aprList(expense);
			break;
		case "5월" :
			items = chartDAO.mayList(expense);
			break;
		case "6월" :
			items = chartDAO.junList(expense);
			break;
		case "7월" :
			items = chartDAO.julList(expense);
			break;
		case "8월" :
			items = chartDAO.augList(expense);
			break;
		case "9월" :
			items = chartDAO.sepList(expense);
			break;
		case "10월" :
			items = chartDAO.octList(expense);
			break;
		case "11월" :
			items = chartDAO.novList(expense);
			break;
		case "12월" :
			items = chartDAO.decList(expense);
			break;
		}
		
		for(ExpenseVO list : items) {
		       
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
		
		return items;
	}

	@Override
	public List<ExpenseVO> getExpenseSelect(ExpenseVO expense) {
		
		List<ExpenseVO> list = chartDAO.getExpenseSelect(expense);
		
		return list;
	}
   
}