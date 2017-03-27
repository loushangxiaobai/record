package com.thinkcms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		 HttpSession session = request.getSession();
		 session.invalidate();
		 response.addHeader("x-frame-options", "DENY");
		/*return "common/login1";*/
		return "common/login1";
	}

	@RequestMapping("/deny")
	public String dely() {
		return "deny";
	}

	@RequestMapping("/timeOut")
	public String timeOut() {
		return "timeout";
	}

	@RequestMapping("/404")
	public String e404() {
		return "common/404";
	}
}