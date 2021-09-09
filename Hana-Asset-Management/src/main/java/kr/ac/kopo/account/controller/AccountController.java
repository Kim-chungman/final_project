package kr.ac.kopo.account.controller;

import java.security.MessageDigest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class AccountController {

	@Autowired(required=true)
	private AccountService accountService;
	
	@Autowired(required=true)
	private MemberService memberService;
	
	@GetMapping("/account/join")
	public String join() {
		
		return "account/join";
	}
	
	@GetMapping("/account/accountInfo")
	public String accountInfo() {
		
		return "account/accountInfo";
	}
	
	@PostMapping("/account/accountInfo")
	public String accountJoin(AccountVO account, Model model, HttpServletRequest request, HttpSession session) {
		/*
		// 암호 확인
		System.out.println(account.toString());
	    System.out.println("첫번째:" + account.getPassword());
	    // 비밀번호 암호화
	    String encryPassword = "";
	    
	    try {
	       MessageDigest digest = MessageDigest.getInstance("SHA-256");
	       byte[] hash = digest.digest(account.getPassword().getBytes("UTF-8"));
	       StringBuffer hexString = new StringBuffer();
	       
	       for(int i = 0; i < hash.length; i++) {
	          String hex = Integer.toHexString(0xff & hash[i]);
	          if(hex.length() == 1) hexString.append('0');
	          hexString.append(hex);
	       }
	       
	       encryPassword = hexString.toString();
	    } catch(Exception e) {
	       e.printStackTrace();
	    }
	    
	    account.setPassword(encryPassword);
	    System.out.println("두번째:" + account.getPassword());
		
	    AccountVO newAccount = accountService.join(account);
	    
	    HttpSession userSession = request.getSession();
		MemberVO memberVO = (MemberVO)userSession.getAttribute("userVO");
		
		if(memberVO.getName()!=null) {
			
			memberService.sendAttach(memberVO.getEmail(), memberVO.getName(), session);
			
			model.addAttribute("userVO", memberVO);
			model.addAttribute("accountVO", newAccount);
			
			return "account/accountOpen";
		}
		*/
		return "account/accountOpen";
	}
}
