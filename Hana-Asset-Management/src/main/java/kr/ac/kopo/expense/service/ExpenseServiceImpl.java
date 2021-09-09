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
      
      JSONArray title = new JSONArray();
      
      col1.put("label", "성별");
      col1.put("type", "string");
      col2.put("label", "신용한도");
      col2.put("type", "number");
      
      title.add(col1);
      title.add(col2);
      
      data.put("cols", title);
      
      JSONArray body = new JSONArray();
      for(ExpenseVO list : items) {
         
         JSONObject gender = new JSONObject();
//         gender.put("v", list.getGender());
         
         JSONObject credit = new JSONObject();
//        credit.put("v", list.getCredit_limit());
         
         JSONArray row = new JSONArray();
         row.add(gender);
         row.add(credit);
         
         JSONObject cell = new JSONObject();
         cell.put("c", row);
         body.add(cell);
         
      }
      data.put("rows", body);
      
      return data;
   }

   
   
}