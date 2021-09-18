package kr.ac.kopo.member.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@SessionAttributes("userVO")
@Controller
public class MemberController {

	@Autowired(required=true)
	private MemberService memberService;
	
	@GetMapping("/login")
	public String loginForm() {
		
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO member, Model model, HttpSession session) {
		
		String encryPassword = "";
	    
	    try {
	       MessageDigest digest = MessageDigest.getInstance("SHA-256");
	       byte[] hash = digest.digest(member.getPassword().getBytes("UTF-8"));
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
	    
	    member.setPassword(encryPassword);
		
		MemberVO userVO = memberService.login(member);
		
		if(userVO == null) {
			String msg = "아이디 또는 패스워드가 잘못되었습니다.";
			model.addAttribute("msg", msg);
			return "member/login";
		}
		
		// 로그인 성공
		model.addAttribute("userVO", userVO);	// model => request 영역
		
		String dest = (String)session.getAttribute("dest");
		System.out.println(dest);
		if(dest != null) {
			session.removeAttribute("dest");
			return "redirect:" + dest;
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(SessionStatus sessionStatus) {
		
		sessionStatus.setComplete();
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/member/idCheck", method=RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String idCheck(HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		MemberVO memberVO = new MemberVO();
		memberVO.setId(id);
		MemberVO user = new MemberVO();
		user = memberService.idCheck(memberVO);
		
		String msg = "사용가능한 아이디입니다.";
		    
		if(user != null ) {
			msg = "사용중인 아이디입니다.";
			return msg;
		} 

		return msg;
	}
	
	@GetMapping("/member/join")
	public String join() {
		
		return "member/joinMember";
	}
	
	@GetMapping("/member/joinIndiAgree")
	public String joinIndiAgree() {
		
		return "member/joinIndiAgree";
	}
	
	@GetMapping("/member/joinIndiInfo")
	public String joinIndiInfo() {
		
		return "member/joinIndiInfo";
	}
	
	@PostMapping("/member/joinIndiInfo")
	public String joinSuccess(MemberVO member, Model model, HttpServletRequest request, HttpSession session) {
		
		// 암호 확인
	    System.out.println("첫번째:" + member.getPassword());
	    // 비밀번호 암호화
	    String encryPassword = "";
	    
	    try {
	       MessageDigest digest = MessageDigest.getInstance("SHA-256");
	       byte[] hash = digest.digest(member.getPassword().getBytes("UTF-8"));
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
	    
	    member.setPassword(encryPassword);
	    System.out.println("두번째:" + member.getPassword());
		
		MemberVO memberVO = memberService.joinMember(member);
		
		if(memberVO.getName()!=null) {
			
			memberService.mailSendWithUserKey(member.getEmail(), member.getName(), request);
		//	memberService.sendAttach(member.getEmail(), member.getName(), session);
			
			model.addAttribute("userVO", memberVO);
			return "member/joinSuccess";
		}
		
		return "member/joinIndiInfo";
	}
	
	@GetMapping("/member/joinSuccess")
	public String success() {
		return "member/joinSuccess";
	}
}
