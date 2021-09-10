package kr.ac.kopo.expense.service;

import java.util.List;

import javax.inject.Inject;

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
         memberId.put("v", list.getMemberId());
         
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
         memberId.put("v", list.getMemberId());
         
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
         memberId.put("v", list.getMemberId());
         
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

   
   
}