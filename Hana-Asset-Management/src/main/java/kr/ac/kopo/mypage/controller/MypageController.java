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
		
		  // ???????????? ????????????
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
			  maxMonth = list.getJan() > list.getFeb() ? "1???" : "2???";
			  maxExpense = maxExpense > list.getMar() ? maxExpense : list.getMar();
			  maxMonth = maxExpense > list.getMar() ? maxMonth : "3???";
			  maxExpense = maxExpense > list.getApr() ? maxExpense : list.getApr();
			  maxMonth = maxExpense > list.getApr() ? maxMonth : "4???";
			  maxExpense = maxExpense > list.getMay() ? maxExpense : list.getMay();
			  maxMonth = maxExpense > list.getMay() ? maxMonth : "5???";
			  maxExpense = maxExpense > list.getJun() ? maxExpense : list.getJun();
			  maxMonth = maxExpense > list.getJun() ? maxMonth : "6???";
			  maxExpense = maxExpense > list.getJul() ? maxExpense : list.getJul();
			  maxMonth = maxExpense > list.getJul() ? maxMonth : "7???";
			  maxExpense = maxExpense > list.getAug() ? maxExpense : list.getAug();
			  maxMonth = maxExpense > list.getAug() ? maxMonth : "8???";
			  maxExpense = maxExpense > list.getSep() ? maxExpense : list.getSep();
			  maxMonth = maxExpense > list.getSep() ? maxMonth : "9???";
			  maxExpense = maxExpense > list.getOct() ? maxExpense : list.getOct();
			  maxMonth = maxExpense > list.getOct() ? maxMonth : "10???";
			  maxExpense = maxExpense > list.getNov() ? maxExpense : list.getNov();
			  maxMonth = maxExpense > list.getNov() ? maxMonth : "11???";
			  maxExpense = maxExpense > list.getDec() ? maxExpense : list.getDec();
			  maxMonth = maxExpense > list.getDec() ? maxMonth : "12???";
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
		System.out.println("?????? : " + totalAsset);
		
		// ??????
		model.addAttribute("deposit", totalAsset);
		model.addAttribute("list", list);
		// ???????????????
		model.addAttribute("depositNum",list.size());
		
		// ??????
		model.addAttribute("saving", saving);
		
		model.addAttribute("fund", fund);
		model.addAttribute("fundValue", fundValue);
		model.addAttribute("fundList", fundList);
		System.out.println("????????? : " +rate);
		System.out.println("?????? : " + fund + ", ???????????? : " + fundValue);
		model.addAttribute("pension", pension);
		model.addAttribute("rate", rate);
		model.addAttribute("deviation", deviation);
		model.addAttribute("msg", "report");
		model.addAttribute("myReport", "assetReport");
		
		totalAsset += (saving+fundValue+pension);
		System.out.println("?????? ?????? : " + totalAsset);
		
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

		// ???????????? ????????????
		AccountVO account = new AccountVO();
		account.setMemberId(userVO.getId());
		List<AccountVO> list = accountService.getAccountList(account);
		
		// ????????? ????????????
		ExpenseVO expense = new ExpenseVO();
		expense.setMember_id(userVO.getId());
		expense.setStart("2021/08/01");
		expense.setLast("2021/08/31");
		ExpenseVO expenseNum = new ExpenseVO();
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
		List<ExpenseVO> education = null;
		
		for(ExpenseVO ex : expenseList) {
			
			switch(ex.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 
	        	 ex.setCategory("??????/??????");
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 
	        	 ex.setCategory("?????????");
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 
	        	 ex.setCategory("?????????");
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 
	        	 ex.setCategory("?????????");
	        	 break;
	         case "FOOD_COST" :
	        	 
	        	 ex.setCategory("??????");
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 
	        	 ex.setCategory("?????????");
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 
	        	 ex.setCategory("?????????");
	        	 break;
	         case "APPAREL_COST" :
	        	 
	        	 ex.setCategory("??????/??????");
	        	 break;
	         case "HOUSING_COST" :
	        	 
	        	 ex.setCategory("?????????");
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 
	        	 ex.setCategory("??????");
	        	 break;
	         }
			
		}
		
		for(ExpenseVO ex : totalList) {
			expense.setCategory(ex.getCategory());
			
			switch(ex.getCategory()) {
	         
	         case "ENTERTAINMENT_COST" :
	        	 int no = 0;
	        	 entertainment = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : entertainment) {
	        		 vo.setCategory("??????/??????");
	        		 no += vo.getExpense(); 
	        	 }
	        	 expenseNum.setApr(no);
	        	 ex.setCategory("??????/??????");
	        	 expense.setApr(entertainment.size());
	        	 break;
	         case "TRANSPORTATION_COST" :
	        	 int no2 = 0;
	        	 transportation = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : transportation) {
	        		 vo.setCategory("?????????");
	        		 no2 += vo.getExpense();
	        	 }
	        	 expenseNum.setMar(no2);
	        	 ex.setCategory("?????????");
	        	 expense.setMar(transportation.size());
	        	 break;
	         case "EDUCATIONAL_COST" :
	        	 int no3 = 0;
	        	 education = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : education) {
	        		 vo.setCategory("?????????");
	        		 no3 += vo.getExpense();
	        	 }
	        	 expenseNum.setSep(no3);
	        	 ex.setCategory("?????????");
	        	 expense.setSep(education.size());
	        	 break;
	         case "COMMUNICATION_COST" :
	        	 int no4 = 0;
	        	 communication = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : communication) {
	        		 vo.setCategory("?????????");
	        		 no4 += vo.getExpense();
	        	 }
	        	 expenseNum.setJul(no4);
	        	 ex.setCategory("?????????");
	        	 expense.setJul(communication.size());
	        	 break;
	         case "FOOD_COST" :
	        	 int no5 = 0;
	        	 food_cost = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : food_cost) {
	        		 vo.setCategory("??????/??????");
	        		 no5 += vo.getExpense();
	        	 }
	        	 expenseNum.setJan(no5);
	        	 ex.setCategory("??????/??????");
	        	 expense.setJan(food_cost.size());
	        	 break;
	         case "HEALTH_CARE_COST" :
	        	 int no6 = 0;
	        	 health_care = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : health_care) {
	        		 vo.setCategory("?????????");
	        		 no6 += vo.getExpense();
	        	 }
	        	 expenseNum.setJun(no6);
	        	 ex.setCategory("?????????");
	        	 expense.setJun(health_care.size());
	        	 break;
	         case "INSURANCE_PREMIUM" :
	        	 int no7 = 0;
	        	 insurance = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : insurance) {
	        		 vo.setCategory("?????????");
	        		 no7 += vo.getExpense();
	        	 }
	        	 expenseNum.setMay(no7);
	        	 ex.setCategory("?????????");
	        	 expense.setMay(insurance.size());
	        	 break;
	         case "APPAREL_COST" :
	        	 int no8 = 0;
	        	 apparel = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : apparel) {
	        		 vo.setCategory("??????/??????");
	        		 no8 += vo.getExpense();
	        	 }
	        	 expenseNum.setFeb(no8);
	        	 ex.setCategory("??????/??????");
	        	 expense.setFeb(apparel.size());
	        	 break;
	         case "HOUSING_COST" :
	        	 int no9 = 0;
	        	 housing = expenseService.getDetailCategory(expense);
	        	 for(ExpenseVO vo : housing) {
	        		 vo.setCategory("?????????");
	        		 no9 += vo.getExpense();
	        	 }
	        	 expenseNum.setAug(no9);
	        	 ex.setCategory("?????????");
	        	 expense.setAug(housing.size());
	        	 break;
	         case "INSTALLMENT_SAVING" :
	        	 ex.setCategory("??????");
	        	 break;
	         }
			
			total += ex.getExpense();
		}
		
		
		// ?????? TOP5
		model.addAttribute("expenseList", expenseList);
		// ?????? ??????
		model.addAttribute("total", total);
		// ??? ????????????
		model.addAttribute("list", list);
		model.addAttribute("msg", "report");
		model.addAttribute("myReport", "expenseReport");
		// ??? ???????????? ??????
		model.addAttribute("expenseNum", expenseNum);
		
		// ??????????????????
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
		        	 ex.setCategory("??????/??????");
		        	 break;
		         case "TRANSPORTATION_COST" :
		        	 ex.setCategory("?????????");
		        	 break;
		         case "EDUCATIONAL_COST" :
		        	 ex.setCategory("?????????");
		        	 break;
		         case "COMMUNICATION_COST" :
		        	 ex.setCategory("?????????");
		        	 break;
		         case "FOOD_COST" :
		        	 ex.setCategory("??????");
		        	 break;
		         case "HEALTH_CARE_COST" :
		        	 ex.setCategory("?????????");
		        	 break;
		         case "INSURANCE_PREMIUM" :
		        	 ex.setCategory("?????????");
		        	 break;
		         case "APPAREL_COST" :
		        	 ex.setCategory("??????/??????");
		        	 break;
		         case "HOUSING_COST" :
		        	 ex.setCategory("?????????");
		        	 break;
		         case "INSTALLMENT_SAVING" :
		        	 ex.setCategory("??????");
		        	 break;
		        	 
		         }
				String[] time = ex.getReg_date().split(" ");
				ex.setReg_date(time[0]);
				
				if(ex.getExpense()<=0) {
					ex.setExpense(1000);
				}
			}
			
			// ?????? ????????????
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
