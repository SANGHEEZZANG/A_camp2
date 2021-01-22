package campa.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import campa.model.memberDTO;
import campa.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;

	@RequestMapping("logInForm.do")
	public String logInForm() {
		return "member/logInForm";
	}

	// to log into myPage:
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(memberDTO memDTO, HttpSession session, Model model) throws Exception {
//		String pw_msg = "";
		int pw_msg = 0;
		memberDTO old = ms.checkUser(memDTO.getId());
		if (old != null) {
			if (memDTO.getPasswd().equals(old.getPasswd())) {
				session.setAttribute("id", memDTO.getId());
//				pw_msg= "로그인 성공";
				model.addAttribute("memDTO", old);
				return "member/myPage";

			} else {
//				pw_msg= "아이디나 비밀번호 확인하세요";
				pw_msg = -1;
				model.addAttribute("pw_msg", pw_msg);
			}
		} else {
			pw_msg = 2;
			model.addAttribute("pw_msg", pw_msg);
		}
		return "member/logInMsg";
	}

	// Apply for membership:
	@RequestMapping(value = "signUpPage.do")
	public String showSignUpPage() {
		return "member/signUpPage";
	}

	// Check ID availability
	@RequestMapping(value = "idCheck.do")
	public String idCheck(String id, Model model) throws Exception {
		System.out.println("id:" + id);
		memberDTO memDTO = ms.select(id);
		String myid = "";
		if (memDTO != null) {
			myid = "이미 사용중인 아이디 입니다.";
		} else {
			myid = "사용가능한 아이디 입니다.";
		}
		model.addAttribute("myid", myid);
		return "member/idCheck";
	}

	// Send Sign Up Form
	@RequestMapping(value = "signUp.do")
	public String signUp(memberDTO memDTO, Model model) throws Exception {
		System.out.println("memDTO" + memDTO.getId());
		int result = ms.insert(memDTO);
		System.out.println("result:" + result);
		model.addAttribute("result", result);
		return "redirect:logInForm.do";
//		return "member/myPage";
	}

	@RequestMapping(value = "myPageUpdateForm.do")
	public String showmyPageUpdateForm(HttpSession session, Model model) throws Exception {
		String id = (String) session.getAttribute("id");
		memberDTO memDTO = ms.select(id);
		model.addAttribute("memDTO", memDTO);
		return "member/myPageUpdateForm";
	}

	@RequestMapping(value = "myPageUpdate.do")
	public String myPageUpdate(@ModelAttribute memberDTO memDTO, Model model) throws Exception {

		System.out.println("id:" + memDTO.getId());
		System.out.println("passwd:" + memDTO.getPasswd());

		memberDTO old = ms.select(memDTO.getId());
		System.out.println("old:" + old);
		int result = 0;
		if (memDTO.getPasswd().equals(old.getPasswd())) {
			result = ms.update(memDTO);
			System.out.println("result:" + result);
			model.addAttribute("memDTO", old);
			model.addAttribute("result", result);
			return "member/myPageUpdated";
		} else {
			result = -1;
		}
		return "member/pwMsg";
	}

	@RequestMapping("myPageDeleteForm.do")
	public String showmyPageDeleteForm(HttpSession session, Model model) throws Exception {
		String id = (String) session.getAttribute("id");
		memberDTO delMem = ms.select(id);
		model.addAttribute("id", id);
		model.addAttribute("name", delMem.getName());
		return "member/memberDelPage";
	}

	@RequestMapping(value = "myPageDeleteGo.do", method = RequestMethod.POST)
	public String myPageDeleteGo(memberDTO memDTO, Model model, HttpSession session) throws Exception {

		memberDTO old = ms.select(memDTO.getId());
		int result = 0;
		if (memDTO.getPasswd().equals(old.getPasswd())) {
			result = ms.delete(memDTO);
			session.invalidate();
			return "redirect:logInForm.do";
		} else {
			result = -1;
		}
		return "member/pwMsg";
//		return "home.do";
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:logInForm.do";
	}

}
