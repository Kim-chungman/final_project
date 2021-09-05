package kr.ac.kopo.portfolio;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class ExcelController {

	@Autowired
	private MemberService service;
	
	@GetMapping("/portfolio/excel")
	public String excelView(Model model) {
		
		List<MemberVO> list = service.memberSelectAll();
		
		model.addAttribute("list", list);
		
		return "portfolio/excelConverter";
	}
	
	@PostMapping("/portfolio/excel")
	public String excelConverter(MemberVO user, Model model) {
		
		List<MemberVO> list = service.memberSelectAll();
			
		XSSFWorkbook xlsWb = new XSSFWorkbook(); //xlsx
//		HSSFWorkbook xlsWb = new HSSFWorkbook(); //xls
		Sheet sheet1 = xlsWb.createSheet("회원명단"); //시트명 설정
				
		Row row = null;
		Cell cell = null;
		
		int rowIdx = 0;
		
		row = sheet1.createRow(rowIdx++);
		String[] title = {"아이디","이름","주소","핸드폰번호","이메일","성별","알림여부","가입일"};
		for(int i=0; i<title.length; i++) {
			cell = row.createCell(i);
	        cell.setCellValue(title[i]);
	        cell.setCellStyle(cellStyle(xlsWb, "head")); // 셀 스타일 적용
		}

		Iterator<MemberVO> it = list.iterator();
		
		while(it.hasNext()) {
			MemberVO grd = it.next();
			
			row = sheet1.createRow(rowIdx++);
			int cellIdx = 0;
			
			//data 출력하기
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getId());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용

	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getName());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getAddress());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getPhonenumber());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getEmail());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getGender());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getNotice());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
	        cell = row.createCell(cellIdx++);
	        cell.setCellValue(grd.getRegDate());
	        cell.setCellStyle(cellStyle(xlsWb, "data")); // 셀 스타일 적용
	        
		}
 
        // excel 파일 저장
        try {
        	String path = "D:/converterTest/"; //경로
        	String fileName = user.getId() + "member.xlsx"; //파일명
            File xlsFile = new File(path+fileName); //저장경로 설정
            FileOutputStream fileOut = new FileOutputStream(xlsFile);
            xlsWb.write(fileOut);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        model.addAttribute("list", list);
        
        return "portfolio/excelConverter";
		
	}
	
	//셀 스타일 설정하는 함수
	public CellStyle cellStyle(XSSFWorkbook xlsWb, String kind) {
		CellStyle cellStyle = xlsWb.createCellStyle();
		cellStyle.setAlignment(HorizontalAlignment.CENTER); //가운데 정렬
		cellStyle.setVerticalAlignment(VerticalAlignment.CENTER); //중앙 정렬
		
		if(kind.equals("head")) {
			cellStyle.setFillForegroundColor(IndexedColors.YELLOW.getIndex()); //노란색
			cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND); //색상 패턴처리
		}else if(kind.equals("data")) {
			cellStyle.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex()); //회색 25%
			cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND); //색상 패턴처리
		}
		
		return cellStyle;
		
	}
}
