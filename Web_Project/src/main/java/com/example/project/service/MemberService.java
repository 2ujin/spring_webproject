package com.example.project.service;

import java.util.List;

import com.example.project.model.dto.MemberVO;

public interface MemberService {
	//1. 회원 목록 보기
	public List<MemberVO> memberList();
	
	//2.회원 입력하기
	public void insertMember(MemberVO vo);
	
	//3. 회원정보 상세보기 
	public MemberVO viewMember(String userId);
	
	//4. 회원 정보 수정하기 
	public void updateMember(MemberVO vo);
	
	//5. 회원 정보 삭제하기 
	public void deleteMember(String userId);

	//6. 비밀번호 확인
	public boolean checkPw(String userId, String userPw);
}
