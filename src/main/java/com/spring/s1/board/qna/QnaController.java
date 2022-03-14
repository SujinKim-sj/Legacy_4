package com.spring.s1.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.s1.board.BoardDTO;
import com.spring.s1.util.Pager;

@Controller
@RequestMapping(value = "/qna/*")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@ModelAttribute("board")
	public String board() {
		return "qna";
	}
	
	//detailFile
	@RequestMapping(value = "fileDown", method = RequestMethod.GET)
	public ModelAndView detailFile(QnaFileDTO qnaFileDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("fileDown");
		qnaFileDTO = qnaService.detailFile(qnaFileDTO);
		mv.addObject("file", qnaFileDTO);
		
		return mv;
	}
	
	//reply
	@RequestMapping(value = "reply", method = RequestMethod.POST)
	public ModelAndView reply(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.reply(qnaDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	
	@RequestMapping(value = "reply", method = RequestMethod.GET)
	public ModelAndView reply(QnaDTO qnaDTO, ModelAndView mv) throws Exception {
		mv.addObject("detail", qnaDTO); //부모 글번호
		mv.setViewName("board/reply");
		return mv;
	}
	
	
	//add
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public ModelAndView add(QnaDTO qnaDTO, MultipartFile [] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.add(qnaDTO, files);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public ModelAndView add() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/add");
		return mv;
	}
	
	//update
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView update(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.update(qnaDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView update(Model model, QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		BoardDTO boardDTO = qnaService.detail(qnaDTO);
		mv.addObject("update", boardDTO);
		mv.setViewName("board/update");
		return mv;
	}
	
	//delete
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(QnaDTO qnaDTO) throws Exception {
		int result = qnaService.delete(qnaDTO);
		return "redirect:./list";
	}
	
	//detail
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail(QnaDTO qnaDTO, Model model) throws Exception {
		BoardDTO boardDTO = qnaService.detail(qnaDTO);
		model.addAttribute("detail", boardDTO);
		
		return "board/detail";
	}
	
	//list
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView mv, Pager pager) throws Exception {
		List<BoardDTO> ar = qnaService.list(pager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("board/list");
		
		return mv;
	}
}
