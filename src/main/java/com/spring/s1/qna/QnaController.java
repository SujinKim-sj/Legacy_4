package com.spring.s1.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/qna/*")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	//add
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(QnaDTO qnaDTO) throws Exception {
		int result = qnaService.add(qnaDTO);
		return "redirect:./list";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public void add() throws Exception {
		
	}
	
	//update
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(QnaDTO qnaDTO) throws Exception {
		int result = qnaService.update(qnaDTO);
		return "redirect:./list";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public void update(Model model, QnaDTO qnaDTO) throws Exception {
		qnaDTO = qnaService.detail(qnaDTO);
		model.addAttribute("update", qnaDTO);
	}
	
	//delete
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(QnaDTO qnaDTO) throws Exception {
		int result = qnaService.delete(qnaDTO);
		return "redirect:./list";
	}
	
	//detail
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public void detail(Model model, QnaDTO qnaDTO) throws Exception {
		qnaDTO = qnaService.detail(qnaDTO);
		model.addAttribute("detail", qnaDTO);
	}
	
	//list
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView mv) throws Exception {
		List<QnaDTO> ar = qnaService.list();
		mv.addObject("list", ar);
		mv.setViewName("qna/list");
		return mv;
	}
}
