package kr.ac.kopo.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ChatController {
	
	@GetMapping("/counseling/{userName}")
	public String chattingForm(@PathVariable("userName") String userName) {
		
		return "chat/counseling";
	}
	
}
