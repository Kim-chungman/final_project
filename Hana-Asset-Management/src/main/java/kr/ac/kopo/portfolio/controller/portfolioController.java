package kr.ac.kopo.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class portfolioController {

	
	@PostMapping("/testing")
	public String test(HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String investmentPeriod = request.getParameter("slider");
		int investmentMoney = Integer.parseInt(request.getParameter("slider2"))*10000;
		String investmentRate = request.getParameter("slider3");
		String investmentType = request.getParameter("investmentType");
		String rrn = request.getParameter("rrn");
		String[] analysis = request.getParameterValues("analysis");
	
		String[] per = investmentRate.split(",");
		int maxPer = Integer.parseInt(per[1]);
		String[] ageNum = rrn.split("-");
		int age = Integer.parseInt(ageNum[0])/10000;
		String start = "";
		String last = "";
		String sd = "";
		String bm = "";
		String sr = "";
		String te = "";
		String ja = "";
		String ir = "";
		double fund = 0;
		double saving = 0;
		double deposit = 0;
		double pension = 0;
		
		// 변수1. 연령대
		if(age>=93) {
			// 20대
			start = "93/01/01";
			last = "99/12/31";
			fund = 0.4;
			saving = 0.3;
			deposit = 0.2;
			pension = 0.1;
		} else if(age>=83 && age <93) {
			// 30대
			start = "83/01/01";
			last = "92/12/31";
			fund = 0.4;
			saving = 0.2;
			deposit = 0.2;
			pension = 0.2;
		} else if(age>=73 && age <83) {
			// 40대
			start = "73/01/01";
			last = "82/12/31";
			fund = 0.3;
			saving = 0.2;
			deposit = 0.3;
			pension = 0.2;
		} else if(age>=63 && age <73) {
			// 50대
			start = "63/01/01";
			last = "72/12/31";
			fund = 0.2;
			saving = 0.1;
			deposit = 0.2;
			pension = 0.5;
		} else if(age>=53 && age <63) {
			// 60대
			start = "53/01/01";
			last = "62/12/31";
			fund = 0.1;
			saving = 0.1;
			deposit = 0.3;
			pension = 0.5;
		}
		
		// 변수2. 투자금액
		if(investmentMoney < 100000) {
			fund -= 0.1;
			saving += 0.02;
			deposit += 0.03;
			pension += 0.05;
		} else if(investmentMoney >= 100000 && investmentMoney < 500000) {
			fund += 0.05;
			saving -= 0.05;
			deposit -= 0.02;
			pension += 0.02;
		} else if(investmentMoney >= 500000 && investmentMoney < 1000000) {
			fund += 0.02;
			saving -= 0.05;
			deposit += 0.02;
			pension += 0.01;
		} else if(investmentMoney >= 1000000 && investmentMoney < 3000000) {
			fund -= 0.07;
			saving -= 0.03;
			deposit += 0.05;
			pension += 0.05;
		} else {
			fund -= 0.08;
			saving -= 0.02;
			deposit += 0.05;
			pension += 0.05;
		}
		
		if(analysis != null) {
			for(String as : analysis) {
				if(as.equals("BM민감도(B)")) {
					bm = as;
					System.out.println(bm);
				}
				if(as.equals("정보비율(IR)")) {
					ir = as;
					System.out.println(ir);
				}
				if(as.equals("Sharpe Ratio")) {
					sr = as;
					System.out.println(sr);
				}
				if(as.equals("트래킹에러(TE,%)")) {
					te = as;
					System.out.println(te);
				}
				if(as.equals("젠센의 알파(%)")) {
					ja = as;
					System.out.println(ja);
				}
				if(as.equals("표준편차(%)")) {
					sd = as;
					System.out.println(sd);
				}
				System.out.println(as.toString());
			}
		}
		
		// 변수3. 기대수익률
		if(maxPer<=5) {
			fund -= 0.05;
			if(fund < 0) deposit = deposit - (0-fund);
			saving += 0.01;
			deposit += 0.03;
			pension += 0.01;
		} else if(maxPer>5 && maxPer<=10) {
			fund += 0.03;
			saving -= 0.01;
			if(saving < 0) fund = fund - (0-saving);
			deposit -= 0.01;
			if(deposit < 0) fund = fund - (0-deposit);
			pension -= 0.01;
			if(pension < 0) fund = fund - (0-pension);
		} else if(maxPer>10 && maxPer<=15) {
			fund += 0.1;
			saving -= 0.04;
			if(saving < 0) fund = fund - (0-saving);
			deposit -= 0.04;
			if(deposit < 0) fund = fund - (0-deposit);
			pension -= 0.02;
			if(pension < 0) fund = fund - (0-pension);
		} else if(maxPer>15 && maxPer<=25) {
			fund += 0.2;
			saving -= 0.08;
			if(saving < 0) fund = fund - (0-saving);
			deposit -= 0.08;
			if(deposit < 0) fund = fund - (0-deposit);
			pension -= 0.04;
			if(pension < 0) fund = fund - (0-pension);
		} else {
			fund += 0.3;
			saving -= 0.1;
			if(saving < 0) fund = fund - (0-saving);
			deposit -= 0.1;
			if(deposit < 0) fund = fund - (0-deposit);
			pension -= 0.1;
			if(pension < 0) fund = fund - (0-pension);
		}
		
		fund = Math.round(fund*Math.pow(10, 2));
		saving = Math.round(saving*Math.pow(10, 2));
		deposit = Math.round(deposit*Math.pow(10, 2));
		pension = Math.round(pension*Math.pow(10, 2));
		
		System.out.println(investmentPeriod);
		System.out.println(investmentMoney);
		System.out.println(maxPer);
		System.out.println(investmentType);
		System.out.println(age + " : " + start + " ~ " + last);
		System.out.println("fund : " + fund + ", deposit : " + deposit + ", saving : " + saving + ", pension : " + pension);
		
		return "index";
	}
}
