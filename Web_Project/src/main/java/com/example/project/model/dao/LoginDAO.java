package com.example.project.model.dao;

import javax.servlet.http.HttpSession;

import com.example.project.model.dto.MemberVO;

public interface LoginDAO {
	//1. 로그인 체크
	public boolean loginCheck(MemberVO vo);
		
	//2. 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
	//3. 회원 로그아웃
	public void logout(HttpSession session);

}
