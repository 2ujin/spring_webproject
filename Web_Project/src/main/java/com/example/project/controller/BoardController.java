package com.example.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.dto.BoardVO;
import com.example.project.service.BoardServiceimpl;

@Controller
public class BoardController {

	@Inject
	BoardServiceimpl boardService;
	
	//1. �Խñ��� ��� ����
	@RequestMapping("/board/list.do") //������ list.do
	public ModelAndView list() {
		
		List<BoardVO> list = boardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	//2. �Խñ� �󼼺��� (����, ��ȸ�� ����)
	@RequestMapping("/board/view.do")
	public ModelAndView view(@RequestParam int bno) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("dto", boardService.read(bno));
		return mav;
	}
	
	//3.�Խñ� �����ϱ�
	@RequestMapping("/board/update.do")
	public String update(@ModelAttribute BoardVO vo) {
		boardService.update(vo);
		return "redirect:list.do";
	}
	
	//4.�Խñ� �����ϱ�
	@RequestMapping("/board/delete.do")
	public String delete(@RequestParam int bno) {
		boardService.delete(bno);
		return "redirect:list.do";
	}
}
