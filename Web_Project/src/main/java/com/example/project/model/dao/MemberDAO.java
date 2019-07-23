package com.example.project.model.dao;

import java.util.List;

import com.example.project.model.dto.MemberVO;

public interface MemberDAO {

	// 1. 회원 목록 보기
	public List<MemberVO> memberList();
	
	//2. 회원 입력하기
	public void insertMember(MemberVO vo);
	
	//3. 회원 정보 상세보기
	public MemberVO viewMember(String userId);
	
	//4. 회원 정보 수정하기
	public void updateMember(MemberVO vo);
	
	//5. 회원 삭제하기
	public void deleteMember(String userId);
}
