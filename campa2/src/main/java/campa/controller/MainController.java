package campa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	// 메인페이지
	@RequestMapping("main.do")
	public String main() {
		return "/main";
	}
	
	// 로그인페이지
	@RequestMapping("loginform.do")
	public String login() {
		return "/loginform";
	}
	
	// 회원가입
	@RequestMapping("memberform.do")
	public String memberform() {
		return "/memberform";
	}
	
	// 오시는길
	@RequestMapping("map.do")
	public String map() {
		return "/map";
	}
	
	
}
