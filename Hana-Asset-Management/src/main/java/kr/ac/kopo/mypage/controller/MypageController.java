package kr.ac.kopo.mypage.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.expense.service.ExpenseService;
import kr.ac.kopo.expense.vo.ExpenseVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.mypage.service.MypageService;
import kr.ac.kopo.portfolio.vo.DecidePortfolioVO;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Controller
public class MypageController {

	@Autowired(required=true)
	private MypageService service;
	
	@Autowired(required=true)
	private ExpenseService expenseService;
	
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/myPage")
	public String myPage(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		PortfolioVO portfolio = new PortfolioVO();
		if(userVO != null) {
			portfolio = service.getPortfolio(userVO.getId());
		}
		
		model.addAttribute("portfolio", portfolio);
		
		String msg = "home";
		model.addAttribute("msg", msg);
		
		return "myPage/myPage";
	}
	
	@GetMapping("/myPage/expense")
	public String myExpense(HttpServletRequest request, Model model) {
		
		String msg = "expense";
		String myExpense = "myExpense";
		model.addAttribute("msg", msg);
		model.addAttribute("myExpense", myExpense);
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		PortfolioVO portfolio = new PortfolioVO();
		if(userVO != null) {
			portfolio = service.getPortfolio(userVO.getId());
		}
		
		  // 지출내역 가져오기
		  ExpenseVO expense = new ExpenseVO();
		  expense.setMember_id(userVO.getId());
		  
		  String age = expenseService.ageData(expense);
		  List<ExpenseVO> monthExpense = expenseService.getMonthExpense(expense);
		  List<ExpenseVO> myData = expenseService.getMyData(expense);
		  List<ExpenseVO> yourData = expenseService.getyourData(expense);
		  
		  int maxExpense = 0;
		  int avgExpense = 0;
		  String maxMonth = "";
		  for(ExpenseVO list: monthExpense) {
			  
			  maxExpense = list.getJan() > list.getFeb() ? list.getJan() : list.getFeb();
			  maxMonth = list.getJan() > list.getFeb() ? "1월" : "2월";
			  maxExpense = maxExpense > list.getMar() ? maxExpense : list.getMar();
			  maxMonth = maxExpense > list.getMar() ? maxMonth : "3월";
			  maxExpense = maxExpense > list.getApr() ? maxExpense : list.getApr();
			  maxMonth = maxExpense > list.getApr() ? maxMonth : "4월";
			  maxExpense = maxExpense > list.getMay() ? maxExpense : list.getMay();
			  maxMonth = maxExpense > list.getMay() ? maxMonth : "5월";
			  maxExpense = maxExpense > list.getJun() ? maxExpense : list.getJun();
			  maxMonth = maxExpense > list.getJun() ? maxMonth : "6월";
			  maxExpense = maxExpense > list.getJul() ? maxExpense : list.getJul();
			  maxMonth = maxExpense > list.getJul() ? maxMonth : "7월";
			  maxExpense = maxExpense > list.getAug() ? maxExpense : list.getAug();
			  maxMonth = maxExpense > list.getAug() ? maxMonth : "8월";
			  maxExpense = maxExpense > list.getSep() ? maxExpense : list.getSep();
			  maxMonth = maxExpense > list.getSep() ? maxMonth : "9월";
			  maxExpense = maxExpense > list.getOct() ? maxExpense : list.getOct();
			  maxMonth = maxExpense > list.getOct() ? maxMonth : "10월";
			  maxExpense = maxExpense > list.getNov() ? maxExpense : list.getNov();
			  maxMonth = maxExpense > list.getNov() ? maxMonth : "11월";
			  maxExpense = maxExpense > list.getDec() ? maxExpense : list.getDec();
			  maxMonth = maxExpense > list.getDec() ? maxMonth : "12월";
			  avgExpense = (list.getJan() + list.getFeb() + list.getMar() + list.getApr() +
					  	    list.getMay() + list.getJun() + list.getJul() + list.getAug() +
					  	    list.getSep() + list.getOct() + list.getNov() + list.getDec())/12;
			  avgExpense = Math.round(avgExpense);
		  }
		  
		  List<ExpenseVO> expenseList = expenseService.getExpenseRank(maxMonth, expense);
		  
		  model.addAttribute("myage", age);
		  model.addAttribute("myData", myData);
		  model.addAttribute("yourData", yourData);
		  model.addAttribute("monthExpense", monthExpense.get(0).getSep());
		  model.addAttribute("maxExpense", maxExpense);
		  model.addAttribute("maxMonth", maxMonth);
		  model.addAttribute("avgExpense", avgExpense);
		  model.addAttribute("expenseList", expenseList);
		
		
		model.addAttribute("portfolio", portfolio);
		
		return "myPage/myExpense";
	}
	
	@RequestMapping("/myPage/assetReport")
	public String assetReport(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");

		AccountVO account = new AccountVO();
		account.setMemberId(userVO.getId());
		List<AccountVO> list = accountService.getAccountList(account);
		
		int totalAsset = 0;
		int saving = 1200000;
		for(AccountVO acc : list) {
			
			totalAsset += acc.getBalance();
			System.out.println(acc.toString());
		}
		
		List<DecidePortfolioVO> fundList = service.getPlanSelect(userVO.getId());
		double rate = fundList.get(0).getRate();
		double deviation = fundList.get(0).getTotal_deviation();
		int fund = 1200000;
		int pension = 600000;
		int fundValue = (int)(fund * ((rate/200)+1));
		System.out.println("예금 : " + totalAsset);
		
		// 예금
		model.addAttribute("deposit", totalAsset);
		model.addAttribute("list", list);
		// 예금계좌수
		model.addAttribute("depositNum",list.size());
		
		// 적금
		model.addAttribute("saving", saving);
		
		model.addAttribute("fund", fund);
		model.addAttribute("fundValue", fundValue);
		model.addAttribute("fundList", fundList);
		System.out.println("이자율 : " +rate);
		System.out.println("원금 : " + fund + ", 이자합산 : " + fundValue);
		model.addAttribute("pension", pension);
		model.addAttribute("rate", rate);
		model.addAttribute("deviation", deviation);
		model.addAttribute("msg", "report");
		model.addAttribute("myReport", "assetReport");
		
		totalAsset += (saving+fundValue+pension);
		System.out.println("종합 자산 : " + totalAsset);
		
		model.addAttribute("totalAsset", totalAsset);
		
		return "myPage/assetReport";
	}
	
	@RequestMapping("/myPage/investStyle")
	public ModelAndView investStyle(Model model) {
		
		model.addAttribute("msg", "report");
		model.addAttribute("myReport", "investStyle");
		
		return new ModelAndView("myPage/investStyle");
	}
	
	@RequestMapping("/myPage/expenseReport")
	public ModelAndView expenseReport(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");

		// 계좌정보 불러오기
		AccountVO account = new AccountVO();
		account.setMemberId(userVO.getId());
		List<AccountVO> list = accountService.getAccountList(account);
		
		// 한달간 지출내역
		ExpenseVO expense = new ExpenseVO();
		expense.setMember_id(userVO.getId());
		expense.setStart("2021/08/20");
		expense.setLast("2021/09/19");
		
		int total = 0;
		List<ExpenseVO> expenseList = expenseService.getOneMonth(expense);
		List<ExpenseVO> totalList = expenseService.getTotalOneMonth(expense);
		List<ExpenseVO> entertainment = null;
		List<ExpenseVO> transportation = null;
		List<ExpenseVO> communication = null;
		List<ExpenseVO> food_cost = null;
		List<ExpenseVO> health_care = null;
		List<ExpenseVO> insurance = null;
		List<ExpenseVO> apparel = null;
		List<ExpenseVO> housing = null;
		
		for(ExpenseVO ex : expenseList) {
			
			switch(ex.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 
	        	 ex.setCategory("문화/오락");
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 
	        	 ex.setCategory("교통비");
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 
	        	 ex.setCategory("교육비");
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 
	        	 ex.setCategory("통신비");
	        	 break;
	         case "FOOD_COST" :
	        	 
	        	 ex.setCategory("식비");
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 
	        	 ex.setCategory("의료비");
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 
	        	 ex.setCategory("보험료");
	        	 break;
	         case "APPAREL_COST" :
	        	 
	        	 ex.setCategory("쇼핑/의류");
	        	 break;
	         case "HOUSING_COST" :
	        	 
	        	 ex.setCategory("주거비");
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 
	        	 ex.setCategory("적금");
	        	 break;
	         }
			
		}
		
		for(ExpenseVO ex : totalList) {
			expense.setCategory(ex.getCategory());
			
			switch(ex.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 
	        	 entertainment = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : entertainment) {
	        		 vo.setCategory("문화/오락");
	        	 }
	        	 ex.setCategory("문화/오락");
	        	 expense.setApr(entertainment.size());
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 
	        	 transportation = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : transportation) {
	        		 vo.setCategory("교통비");
	        	 }
	        	 ex.setCategory("교통비");
	        	 expense.setMar(transportation.size());
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 
	        	 ex.setCategory("교육비");
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 
	        	 communication = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : communication) {
	        		 vo.setCategory("통신비");
	        	 }
	        	 ex.setCategory("통신비");
	        	 expense.setJul(communication.size());
	        	 break;
	         case "FOOD_COST" :
	        	 
	        	 food_cost = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : food_cost) {
	        		 vo.setCategory("식비");
	        	 }
	        	 ex.setCategory("식비");
	        	 expense.setJan(food_cost.size());
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 
	        	 health_care = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : health_care) {
	        		 vo.setCategory("의료비");
	        	 }
	        	 ex.setCategory("의료비");
	        	 expense.setJun(health_care.size());
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 
	        	 insurance = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : insurance) {
	        		 vo.setCategory("보험료");
	        	 }
	        	 ex.setCategory("보험료");
	        	 expense.setMay(insurance.size());
	        	 break;
	         case "APPAREL_COST" :
	        	 
	        	 apparel = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : apparel) {
	        		 vo.setCategory("쇼핑/의류");
	        	 }
	        	 ex.setCategory("쇼핑/의류");
	        	 expense.setFeb(apparel.size());
	        	 break;
	         case "HOUSING_COST" :
	        	 
	        	 housing = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : housing) {
	        		 vo.setCategory("주거비");
	        	 }
	        	 ex.setCategory("주거비");
	        	 expense.setAug(housing.size());
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 ex.setCategory("적금");
	        	 break;
	         }
			
			total += ex.getExpense();
		}
		
		
		// 지출 TOP5
		model.addAttribute("expenseList", expenseList);
		// 지출 총액
		model.addAttribute("total", total);
		// 내 계좌정보
		model.addAttribute("list", list);
		model.addAttribute("msg", "report");
		model.addAttribute("myReport", "expenseReport");
		
		// 세부지출내역
		model.addAttribute("entertainment", entertainment);
		model.addAttribute("transportation", transportation);
		model.addAttribute("communication", communication);
		model.addAttribute("food_cost", food_cost);
		model.addAttribute("health_care", health_care);
		model.addAttribute("insurance", insurance);
		model.addAttribute("apparel", apparel);
		model.addAttribute("housing", housing);
		model.addAttribute("expense", expense);
		
		return new ModelAndView("myPage/expenseReport");
		
	}
	
	@RequestMapping("/myPage/daySelect")
	@ResponseBody
	public ModelAndView selectExpense(HttpServletRequest request, Model model) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		System.out.println(name);
		String select = "";
		String startDay = "";
		String lastDay = "";
		
		if(request.getParameter("select")!=null) {
			select = request.getParameter("select");
		}
		
		Date day = new Date();
		int year = day.getYear()+1900;
		int month = day.getMonth()+1;
		int date = day.getDate();
		
		String last = year + "/" + month + "/" + date;
		String start = "";
		ExpenseVO expense = new ExpenseVO();
		expense.setMember_id(id);
		
		if(request.getParameter("startDay") != null) {
			startDay = request.getParameter("startDay");
			expense.setStart(startDay);
		}
		
		if(request.getParameter("lastDay") != null) {
			lastDay = request.getParameter("lastDay");
			expense.setLast(lastDay);
			
		}
		
		List<ExpenseVO> list = null;
		
		if(select != null && startDay.equals("") && lastDay.equals("")) {
			int num = Integer.parseInt(select);
			switch(num) {
			case 1 :
				year -= 1;
				start = year + "/" + month + "/" + date;
				
				expense.setStart(start);
				expense.setLast(last);
				
				list = expenseService.getExpenseSelect(expense);
				break;
			case 2 :
				if(month > 6) {
					month -= 6;
					start = year + "/" + month + "/" + date;
					expense.setStart(start);
					expense.setLast(last);
					
					list = expenseService.getExpenseSelect(expense);
				} else {
					year -=1;
					month += 6;
					start = year + "/" + month + "/" + date;
					expense.setStart(start);
					expense.setLast(last);
					
					list = expenseService.getExpenseSelect(expense);
				}
				break;
			case 3 :
				if(month > 3) {
					month -= 3;
					start = year + "/" + month + "/" + date;
					expense.setStart(start);
					expense.setLast(last);
					
					list = expenseService.getExpenseSelect(expense);
				} else {
					year -=1;
					month += 3;
					start = year + "/" + month + "/" + date;
					expense.setStart(start);
					expense.setLast(last);
					
					list = expenseService.getExpenseSelect(expense);
				}
				break;
			}
		}
		
		
		if(request.getParameter("startDay") != null && select.equals("")) {
		
			list = expenseService.getExpenseSelect(expense);
		}
		
		
		if(list != null) {
		
			List<ExpenseVO> selectList = new ArrayList<ExpenseVO>();
			
			for(ExpenseVO ex : list) {
				switch(ex.getCategory()) {
		         
		         case "ENTERTAINMENT_COST" :
		        	 ex.setCategory("문화/오락");
		        	 break;
		         case "TRANSPORTATION_COST" :
		        	 ex.setCategory("교통비");
		        	 break;
		         case "EDUCATIONAL_COST" :
		        	 ex.setCategory("교육비");
		        	 break;
		         case "COMMUNICATION_COST" :
		        	 ex.setCategory("통신비");
		        	 break;
		         case "FOOD_COST" :
		        	 ex.setCategory("식비");
		        	 break;
		         case "HEALTH_CARE_COST" :
		        	 ex.setCategory("의료비");
		        	 break;
		         case "INSURANCE_PREMIUM" :
		        	 ex.setCategory("보험료");
		        	 break;
		         case "APPAREL_COST" :
		        	 ex.setCategory("쇼핑/의류");
		        	 break;
		         case "HOUSING_COST" :
		        	 ex.setCategory("주거비");
		        	 break;
		         case "INSTALLMENT_SAVING" :
		        	 ex.setCategory("적금");
		        	 break;
		        	 
		         }
				String[] time = ex.getReg_date().split(" ");
				ex.setReg_date(time[0]);
				
				if(ex.getExpense()<=0) {
					ex.setExpense(1000);
				}
			}
			
			// 엑셀 파일생성
			if(expense.getStart().contains("/")) {
				start = expense.getStart().replaceAll("/", ".");
				last = expense.getLast().replaceAll("/", ".");
			} else if(expense.getStart().contains("-")) {
				start = expense.getStart().replaceAll("-", ".");
				last = expense.getLast().replaceAll("-", ".");
			}
			
			
			service.excelConverter(list, name, start, last);
			
			for(int i = 0; i < 20; i++) {
				ExpenseVO vo = new ExpenseVO();
				vo.setCategory(list.get(i).getCategory());
				vo.setExpense(list.get(i).getExpense());
				vo.setReg_date(list.get(i).getReg_date());
				
				selectList.add(vo);
			}
			
			model.addAttribute("list", selectList);
			model.addAttribute("start", start);
			model.addAttribute("last", last);
		}
		
		return new ModelAndView("myPage/expenseSelect");
	}
	
	@RequestMapping("/myPage/depositRatio")
	@ResponseBody
	public JSONObject depositRate(HttpServletRequest request) throws Exception {
	     
		request.setCharacterEncoding("utf-8");
		
		int deposit = Integer.parseInt(request.getParameter("deposit"));
		int saving = Integer.parseInt(request.getParameter("saving"));
		int pension = Integer.parseInt(request.getParameter("pension"));
		
		int invest = saving + pension;
		
		return service.getDepositData(deposit, invest);
    }
	
	@RequestMapping("/myPage/fundRatio")
	@ResponseBody
	public JSONObject fundRate(HttpServletRequest request) throws Exception {
	     
		request.setCharacterEncoding("utf-8");
		
		int totalAsset = Integer.parseInt(request.getParameter("totalAsset"));
		int fund = Integer.parseInt(request.getParameter("fund"));
		
		totalAsset -= fund;
		
		return service.getFundData(totalAsset, fund);
    }
	
	@GetMapping("/myPage/portfolio")
	public String myPortfolio() {
		return "myPage/portfolio";
	}
	
}
