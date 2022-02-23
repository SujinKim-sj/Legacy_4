package com.spring.s1.member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//update
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(MemberDTO memberDTO) throws Exception {
		int result = memberService.update(memberDTO);
		return "redirect:../";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public void update(MemberDTO memberDTO, Model model) throws Exception {
		memberDTO = memberService.mypage(memberDTO);
		model.addAttribute("member", memberDTO);
	}
	
	
	//mypage
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public ModelAndView mypage(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		memberDTO = memberService.mypage(memberDTO);
		mv.setViewName("member/mypage");
		mv.addObject("member", memberDTO);
		
		return mv;
	}
	
	
	//logout
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		//session 객체를 소멸
		session.invalidate(); 		//session 해제
		return "redirect:../";
	}
	
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpSession session, MemberDTO memberDTO, String remember, Model model, HttpServletResponse response) throws Exception {
		
		System.out.println("Remember: " + remember);
		
		if(remember != null && remember.equals("1")) {
			//Cookie 생성
			Cookie cookie = new Cookie("remember", memberDTO.getId());
			//cookie.setPath("/");
			cookie.setMaxAge(-1);
			//응답
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("remember", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		//cookie 작성 후 실행
		memberDTO = memberService.login(memberDTO);
		
 		//model.addAttribute("member", memberDTO);
		
		String path = "redirect:./login";
		
		if(memberDTO != null) {
			session.setAttribute("member", memberDTO);
			path = "redirect:../";
		}
		
		return path;
	}
	
	//login
	@RequestMapping(value = "login", method = RequestMethod.GET) 
	public void login(Model model, @CookieValue(value = "remember", defaultValue = "", required = false) String rememberId) throws Exception {
		//model.addAttribute("rememberId", rememberId);
		
	}
	
	//insert
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(MemberDTO memberDTO) throws Exception {
		int result = memberService.join(memberDTO);
		return "redirect:../";
	}
	
	//join
	@RequestMapping(value = "join", method = RequestMethod.GET) 
	public void join() throws Exception{
		
	}
	
}
