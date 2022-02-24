package com.spring.s1.bankbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.s1.util.Pager;

@Controller
@RequestMapping(value = "/bankbook/*")
public class BankBookController {

	@Autowired
	private BankBookService bankBookService;
	
	//update
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(BankBookDTO bankBookDTO) throws Exception {
		int result = bankBookService.update(bankBookDTO);
		
		return "redirect:./list";
	}
	
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public void update(Model model, BankBookDTO bankBookDTO) throws Exception {
		bankBookDTO = bankBookService.detail(bankBookDTO);
		model.addAttribute("update", bankBookDTO);
	}
	
	//delete
	@RequestMapping(value = "delete", method = RequestMethod.GET) 
	public String delete(BankBookDTO bankBookDTO) throws Exception {
		int result = bankBookService.delete(bankBookDTO);
		
		return "redirect:./list";
	}
	
	//insert form 이동
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public void add() throws Exception {
	}
	
	//DB에 insert
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(BankBookDTO bankBookDTO) throws Exception {
		int result = bankBookService.add(bankBookDTO);
		
		return "redirect:./list";
	}
	
	//detail
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public void detail(Model model, BankBookDTO bankBookDTO) throws Exception {
		
		bankBookDTO = bankBookService.detail(bankBookDTO);
		model.addAttribute("detail", bankBookDTO);
	}

	//list
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView mv, Pager pager) throws Exception {
		//ModelAndView
		//매개변수 선언 : list(ModelAndView mv)
		//메서드 내에서 객체 생성
		//ModelAndView modelAndView = new ModelAndView();
		
		List<BankBookDTO> ar = bankBookService.list(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("bankbook/list");
		
		return mv;
	}
	
}
