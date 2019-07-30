package com.example.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.dto.ReplyVO;
import com.example.project.service.ReplyService;

@RestController
public class ReplyController {
	@Inject
	ReplyService replyService;
	
	@RequestMapping("/reply/insert.do")
	public void insert(@ModelAttribute ReplyVO vo) {
		replyService.create(vo);
	}
	
	@RequestMapping("/reply/list.do") //화면을 리턴
	public ModelAndView list(@RequestParam int bno, ModelAndView mav) {
		List<ReplyVO>list=replyService.list(bno);
		mav.setViewName("board/replyList");
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping("/reply/listJson.do")
	
	@ResponseBody //return data를 json으로 변환해서 처리
	public List<ReplyVO>listJson(@RequestParam int bno){
		List<ReplyVO>list = replyService.list(bno);
		return list;
	}
}
