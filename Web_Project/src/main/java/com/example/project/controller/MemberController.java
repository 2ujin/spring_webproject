package com.example.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.project.model.dto.MemberVO;
import com.example.project.service.MemberService;

@Controller
public class MemberController {
	
	@Inject 
	MemberService memberService;
	
	//1. 회원목록 보기
	@RequestMapping("member/list.do")
	public String memberList(Model model) {
		
	List<MemberVO>list =memberService.memberList();
	    model.addAttribute("list", list);
		
		return "member/member_list";
	}
	
	//2. 회원 등록 페이지로 가기
	@RequestMapping("member/write.do")
	public String memberWrite() {
		return "member/member_write";
	}
	
	//3. 회원 등록 처리 
	@RequestMapping("member/insert.do")
	public String memberInsert(@ModelAttribute MemberVO vo) {
		
		memberService.insertMember(vo);
		
		return "redirect:/member/list.do";
	}
	
	//4. 회원 상세 보기
	
	@RequestMapping("member/view.do")
	public String memberView(String userId, Model model) {
		model.addAttribute("dto", memberService.viewMember(userId));
		return "member/member_view";
	}
	
	//5. 회원정보 수정하기 
	@RequestMapping("member/update.do")
	public String memberUpdate(@ModelAttribute MemberVO vo,Model model) {
		
		boolean result=memberService.checkPw(vo.getUserId(),vo.getUserPw());
		if(result) {
				 memberService.updateMember(vo);
		         return "redirect:/member/list.do";
		}
		else
		{
			MemberVO vo2=memberService.viewMember(vo.getUserId());
			vo.setUserRegdate(vo2.getUserRegdate());
			model.addAttribute("dto",vo);
			model.addAttribute("message","비밀번호 일치하지 않는다.");
			return "member/member_view";
		}
	}
	
	//6. 회원정보 삭제하기 
	@RequestMapping("member/delete.do")
	public String memberDelete(@RequestParam String userId)
	{
	  memberService.deleteMember(userId);
	  return "redirect:/member/list.do";
	}
	
	
	

}





