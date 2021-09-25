package kr.ac.kopo.mypage.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.expense.service.ExpenseService;
import kr.ac.kopo.expense.vo.ExpenseVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.mypage.service.MypageService;
import kr.ac.kopo.portfolio.vo.PortfolioVO;

@Controller
public class MypageController {

	@Autowired(required=true)
	private MypageService service;
	
	@Autowired(required=true)
	private ExpenseService expenseService;
	
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
	public String assetReport(Model model) {
		
		model.addAttribute("msg", "report");
		model.addAttribute("myReport", "assetReport");
		
		return "myPage/assetReport";
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
	
	@GetMapping("/myPage/portfolio")
	public String myPortfolio() {
		return "myPage/portfolio";
	}
	
}
