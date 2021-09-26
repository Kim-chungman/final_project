package kr.ac.kopo.mypage.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.expense.vo.ExpenseVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.mypage.dao.MypageDAO;
import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired(required=true)
	private MypageDAO mypageDAO;

	@Override
	public PortfolioVO getPortfolio(String id) {
		
		PortfolioVO portfolio = mypageDAO.getPortfolio(id);
		
		return portfolio;
	}

	@Override
	public void excelConverter(List<ExpenseVO> list, String name, String start, String last) {
		
		XSSFWorkbook xlsWb = new XSSFWorkbook(); //xlsx
//		HSSFWorkbook xlsWb = new HSSFWorkbook(); //xls
		Sheet sheet1 = xlsWb.createSheet("지출내역"); //시트명 설정
		sheet1.setColumnWidth(0, 5000);
		sheet1.setColumnWidth(1, 5000);
		sheet1.setColumnWidth(2, 7000);
		
		Row row = null;
		Cell cell = null;
		
		int rowIdx = 0;
		
		row = sheet1.createRow(rowIdx++);
		String[] title = {"카테고리","금액","결제일"};
		for(int i=0; i<title.length; i++) {
			cell = row.createCell(i);
	        cell.setCellValue(title[i]);
	        cell.setCellStyle(cellStyle(xlsWb, "head")); // 셀 스타일 적용
	    }

		Iterator<ExpenseVO> it = list.iterator();
		
		while(it.hasNext()) {
			ExpenseVO grd = it.next();
			
			row = sheet1.createRow(rowIdx++);
			int cellIdx = 0;
			
			//data 출력하기
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getCategory());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getExpense());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getReg_date());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
		}		
 
        // excel 파일 저장
        try {
  //      	String path = "D:/converterTest/"; //경로
        	String path = "C:/Users/HP/git/final_project/Hana-Asset-Management/src/main/webapp/resources/excel/";
        	String fileName = name + "("+ start + "~"+ last +")" +".xlsx"; //파일명
            File xlsFile = new File(path+fileName); //저장경로 설정
            FileOutputStream fileOut = new FileOutputStream(xlsFile);
            xlsWb.write(fileOut);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
		
	}
	
	public CellStyle cellStyle(XSSFWorkbook xlsWb, String kind) {
		CellStyle cellStyle = xlsWb.createCellStyle();
		cellStyle.setAlignment(HorizontalAlignment.CENTER); //가운데 정렬
		cellStyle.setVerticalAlignment(VerticalAlignment.CENTER); //중앙 정렬
		
		if(kind.equals("head")) {
			cellStyle.setFillForegroundColor(IndexedColors.YELLOW.getIndex()); //노란색
			cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND); //색상 패턴처리
			cellStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());
			cellStyle.setLeftBorderColor(IndexedColors.BLACK.getIndex());
			cellStyle.setTopBorderColor(IndexedColors.BLACK.getIndex());
			cellStyle.setRightBorderColor(IndexedColors.BLACK.getIndex());
		}else if(kind.equals("data")) {
			cellStyle.setFillForegroundColor(IndexedColors.WHITE.getIndex()); //회색 25%
			cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND); //색상 패턴처리
		}
		
		return cellStyle;
		
	}

	@Override
	public List<DecidePortfolioVO> getPlanSelect(String id) {
		
		List<DecidePortfolioVO> list = mypageDAO.getPlanSelect(id);
		
		return list;
	}

	@Override
	public JSONObject getDepositData(int deposit, int invest) {
		
		JSONObject data = new JSONObject();
	     
	    JSONObject col1 = new JSONObject();
	    JSONObject col2 = new JSONObject();
		
	    JSONArray title = new JSONArray();
	      
		col1.put("label", "자산");
		col1.put("type", "string");
		col2.put("label", "금액");
		col2.put("type", "number");
	    
		title.add(col1);
	    title.add(col2);
		
	    data.put("cols", title);
	    
	    JSONArray body = new JSONArray();
	    
	    if(deposit != 0) {
		    JSONObject category = new JSONObject();
		    category.put("v", "안전자산");
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", deposit);
		    
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    
	    if(invest != 0) {
		    JSONObject category = new JSONObject();
		    category.put("v", "투자자산");
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", invest);
		    
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
	public JSONObject getFundData(int totalAsset, int fund) {

		JSONObject data = new JSONObject();
	     
	    JSONObject col1 = new JSONObject();
	    JSONObject col2 = new JSONObject();
		
	    JSONArray title = new JSONArray();
	      
		col1.put("label", "자산");
		col1.put("type", "string");
		col2.put("label", "금액");
		col2.put("type", "number");
	    
		title.add(col1);
	    title.add(col2);
		
	    data.put("cols", title);
	    
	    JSONArray body = new JSONArray();
	    
	    if(totalAsset != 0) {
		    JSONObject category = new JSONObject();
		    category.put("v", "포트폴리오 외 자산");
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", totalAsset);
		    
		    JSONArray row = new JSONArray();
	        row.add(category);
	        row.add(productRate);
	        
	        JSONObject cell = new JSONObject();
	        cell.put("c", row);
	        body.add(cell);
	    }
	    
	    if(fund != 0) {
		    JSONObject category = new JSONObject();
		    category.put("v", "포트폴리오 자산");
		    JSONObject productRate = new JSONObject();
		    productRate.put("v", fund);
		    
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
