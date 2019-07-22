package com.example.project.service;

import java.util.List;

import com.example.project.model.dto.MemberVO;

public interface MemberService {
	//1. 회원 목록 보기
	public List<MemberVO> memberList();
	
	//2. 회원 입력하기
	public void insertMember(MemberVO vo);
	
	//3. 회원정보 상세보기
	public MemberVO viewMember();
	
	//4. 회원정보 수정하기
	public void updateMember(MemberVO vo);
	
	//5. 회원정보 삭제하기
	public void deleteMember(String userId);
	

}
