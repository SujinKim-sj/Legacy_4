package com.spring.s1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.s1.member.MemberDTO;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("Login Interceptor");
		
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		
		//return이 boolean 타입
		boolean check = true;
		
		if(memberDTO == null) {
			check = false;
			//1. forward 형식 - servlet 문법 사용
//			request.setAttribute("message", "로그인이 필요합니다");
//			request.setAttribute("path", "../member/login");
//			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
//			view.forward(request, response);
//			
			//2. redirect 
			response.sendRedirect("../member/login");
		}
		
		return check;
	}
}
