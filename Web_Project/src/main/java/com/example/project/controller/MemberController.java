package com.example.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.project.model.dto.MemberVO;
import com.example.project.service.MemberService;

@Controller
public class MemberController {
	
	@Inject 
	MemberService memberService;
	
	// 1. 회원목록 보기
	@RequestMapping("member/list.do")
	public String memberList(Model model){
		
		List<MemberVO>list = memberService.memberList();
		model.addAttribute("list", list);
		
		return "member/member_list";		
	}
	
	// 2. 회원 등록 페이지로 가기
	@RequestMapping("member/write.do")
	public String memberWrite(Model model) {
		return "member/member_write";
	}
	
	// 3. 회원 등록 처리
	@RequestMapping("member/insert.do")
	public String memberInsert(@ModelAttribute MemberVO vo) {
		
		memberService.insertMember(vo);
		
		return "redirect:/member/list.do"; // 다시 리스트 페이지롱 ~~
	}
}
