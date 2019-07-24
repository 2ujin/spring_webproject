package com.example.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.dto.BoardVO;
import com.example.project.service.BoardServiceimpl;

@Controller
public class BoardController {

	@Inject
	BoardServiceimpl boardService;
	
	//1. 게시글의 목록 보기
	@RequestMapping("/board/write.do") //원래는 list.do
	public ModelAndView list() {
		
		List<BoardVO> list = boardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list");
		mav.addObject("list", list);
		
		return mav;
	}
	
	//2. 게시글 상세보기 (보기, 조회수 증가)
	@RequestMapping("/board/view.do")
	public ModelAndView view(@RequestParam int bno) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("dto", boardService.read(bno));
		
		return mav;
	}
	
	
	
}
