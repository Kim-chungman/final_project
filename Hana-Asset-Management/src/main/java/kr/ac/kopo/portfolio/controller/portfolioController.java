package kr.ac.kopo.portfolio.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.portfolio.service.PortfolioService;
import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Controller
public class portfolioController {

	@Autowired
	private PortfolioService service;
	
	@PostMapping("/fundPortfolio")
	public ModelAndView fundPortfolio(PortfolioVO portfolio, Model model) {
		
		System.out.println(portfolio.toString());
		model.addAttribute("portfolio", portfolio);
		
		List<DecidePortfolioVO> list = service.getDecidePortfolio(portfolio);
		model.addAttribute("planA", list);
		
		double rate = list.get(0).getRate();
		double deviation = list.get(0).getTotal_deviation();
		model.addAttribute("rate", rate);
		model.addAttribute("deviation", deviation);
		
		return new ModelAndView("portfolio/fundPortfolio");
	}
	
	@PostMapping("/fundJoin")
	public ModelAndView fundJoin(PortfolioVO portfolio, Model model) {
		
		System.out.println(portfolio.toString());
		model.addAttribute("portfolio", portfolio);
		
		List<DecidePortfolioVO> list = service.getPlanSelect(portfolio);
		model.addAttribute("planA", list);
		
		double rate = list.get(0).getRate();
		double deviation = list.get(0).getTotal_deviation();
		model.addAttribute("rate", rate);
		model.addAttribute("deviation", deviation);
		
		return new ModelAndView("portfolio/fundJoin");
	}
	
	@RequestMapping("/fundInfo")
	public ModelAndView fundInfo(PortfolioVO portfolio, Model model) {
		
		System.out.println(portfolio.toString());
		model.addAttribute("portfolio", portfolio);
		
		List<DecidePortfolioVO> list = service.getPlanSelect(portfolio);
		model.addAttribute("planA", list);
		
		double rate = list.get(0).getRate();
		double deviation = list.get(0).getTotal_deviation();
		model.addAttribute("rate", rate);
		model.addAttribute("deviation", deviation);
		
		return new ModelAndView("portfolio/fundInfo");
	}
	
	@RequestMapping("/portfolioPlan")
	@ResponseBody
	public JSONObject protfolioPlan(PortfolioVO portfolio) throws Exception {
		
		System.out.println(portfolio.toString());
		
		return service.getChartData(portfolio);
		
	}
	
	@RequestMapping("/recommendPortfolio")
	@ResponseBody
	public JSONObject recommendPortfolio(PortfolioVO portfolio, Model model, HttpServletRequest request) throws Exception {
		
		JSONObject data = service.getPortfolioData(portfolio);
		
		return data;
	}
	
	@PostMapping("/portfolio")
	public ModelAndView test(HttpServletRequest request, Model model) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String member_id = request.getParameter("member_id");
		String name = request.getParameter("name");
		String investMethod = request.getParameter("investMethod");
		String investmentPeriod = request.getParameter("slider");
		int investmentMoney = Integer.parseInt(request.getParameter("slider2"))*10000;
		String investmentRate = request.getParameter("slider3");
		String investmentType = request.getParameter("investmentType");
		String rrn = request.getParameter("rrn");
		String[] analysis = request.getParameterValues("analysis");
	
		String[] per = investmentRate.split(",");
		int minPer = Integer.parseInt(per[0]);
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
		
		if(investmentType.equals("안전형")) {
			fund = 0.2;
			saving = 0.3;
			deposit = 0.3;
			pension = 0.2;
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
		
		PortfolioVO portfolio = new PortfolioVO();
		portfolio.setMember_id(member_id);
		portfolio.setName(name);
		portfolio.setInvestmentPeriod(investmentPeriod);
		portfolio.setInvestmentMoney(investmentMoney);
		portfolio.setMaxPer(maxPer);
		portfolio.setMinPer(minPer);
		portfolio.setInvestmentType(investmentType);
		portfolio.setBm(bm);
		portfolio.setSd(sd);
		portfolio.setSr(sr);
		portfolio.setTe(te);
		portfolio.setJa(ja);
		portfolio.setIr(ir);
		portfolio.setFund(fund);
		portfolio.setDeposit(deposit);
		portfolio.setSaving(saving);
		portfolio.setPension(pension);
		portfolio.setStart(start);
		portfolio.setLast(last);
		portfolio.setInvestMethod(investMethod);
		
		model.addAttribute("portfolio", portfolio);
		
		service.historyInsert(portfolio);
		
		return new ModelAndView("portfolio/portfolio");
	}
	
	
	

	/*
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("member_id");
	String name = request.getParameter("name");
	String investmentPeriod = request.getParameter("investmentPeriod");
	int investmentMoney = Integer.parseInt(request.getParameter("investmentMoney"));
	int investmentRate = Integer.parseInt(request.getParameter("investmentRate"));
	int minPer = Integer.parseInt(request.getParameter("minPer"));
	int maxPer = Integer.parseInt(request.getParameter("maxPer"));
	String investmentType = request.getParameter("investmentType");
	String sd = request.getParameter("sd");
	String bm = request.getParameter("bm");
	String sr = request.getParameter("sr");
	String te = request.getParameter("te");
	String ja = request.getParameter("ja");
	String ir = request.getParameter("ir");
	double fund = Double.parseDouble(request.getParameter("fund"));
	double deposit = Double.parseDouble(request.getParameter("deposit"));
	double saving = Double.parseDouble(request.getParameter("saving"));
	double pension = Double.parseDouble(request.getParameter("pension"));
	String start = request.getParameter("start");
	String last = request.getParameter("last");
	
	PortfolioVO portfolio = new PortfolioVO();
	portfolio.setMember_id(id);
	portfolio.setName(name);
	portfolio.setInvestmentPeriod(investmentPeriod);
	portfolio.setInvestmentMoney(investmentMoney);
	portfolio.setInvestmentRate(investmentRate);
	portfolio.setMaxPer(maxPer);
	portfolio.setMinPer(minPer);
	portfolio.setInvestmentType(investmentType);
	portfolio.setBm(bm);
	portfolio.setSd(sd);
	portfolio.setSr(sr);
	portfolio.setTe(te);
	portfolio.setJa(ja);
	portfolio.setIr(ir);
	portfolio.setFund(fund);
	portfolio.setDeposit(deposit);
	portfolio.setSaving(saving);
	portfolio.setPension(pension);
	portfolio.setStart(start);
	portfolio.setLast(last);
	*/
}
