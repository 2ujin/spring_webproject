package com.example.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
	public ModelAndView list(@RequestParam(defaultValue="title")String searchoption, @RequestParam(defaultValue="")String keyword){
		
		List<BoardVO> list = boardService.listAll(searchoption, keyword);
		int count = boardService.countArticle(searchoption, keyword);
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("searchoption", searchoption);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		mav.setViewName("board/list");
		return mav;
		
	}
	
	//2. �Խñ� �󼼺��� (����, ��ȸ�� ����)
	@RequestMapping("/board/view.do")
	public ModelAndView view(@RequestParam int bno, HttpSession session) {
		boardService.increaseViewcnt(bno, session);
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
	
	//5. �Խñ� �߰��ϱ�
	@RequestMapping("/board/write.do")
	public String write() {
		return "board/write";
	}
	
	//6. �Խñ� �ۼ��ϱ�
	@RequestMapping("/board/insert.do")
	public String insert(BoardVO vo) {
		boardService.create(vo);
		return "redirect:list.do";
	}
	
}
