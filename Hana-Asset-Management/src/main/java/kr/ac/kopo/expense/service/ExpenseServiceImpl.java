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
   public JSONObject getChartData() {

      List<ExpenseVO> items = chartDAO.customerList();
      
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
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "회원아이디");
      col1.put("type", "string");
      col2.put("label", "1월");
      col2.put("type", "number");
      col3.put("label", "2월");
      col3.put("type", "number");
      col4.put("label", "3월");
      col4.put("type", "number");
      col5.put("label", "4월");
      col5.put("type", "number");
      col6.put("label", "5월");
      col6.put("type", "number");
      col7.put("label", "6월");
      col7.put("type", "number");
      col8.put("label", "7월");
      col8.put("type", "number");
      col9.put("label", "8월");
      col9.put("type", "number");
      
      title.add(col1);
      title.add(col2);
      title.add(col3);
      title.add(col4);
      title.add(col5);
      title.add(col6);
      title.add(col7);
      title.add(col8);
      title.add(col9);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
         
         JSONObject memberId = new JSONObject();
         memberId.put("v", list.getMemberId());
         
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

   
   
}