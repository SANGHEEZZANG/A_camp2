package campa.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionCheckInter extends HandlerInterceptorAdapter {
	private static final Logger log = LoggerFactory.getLogger(SessionCheckInter.class);
	// preHandle(request,response,handler)메소드
	// 1.Controller에서 요청(*.nhn)을 받기 전에  preHandle()가 호출되어 가로채는 역할로 사용
	// 2.로그인 하지않고(세션이 없으면) 요청하면 로그인 폼으로 이동 하도록 해주는 역할
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler) throws Exception {
		log.info("Interceptor: prehandle");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		if (id == null || id.equals(""))  {		
			response.sendRedirect("logInForm.do");	// 세션이 없으면 로그인 폼으로 이동
			return false;
		}
		return true;
	}
}