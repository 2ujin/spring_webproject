package com.example.project.model.dao;

import javax.servlet.http.HttpSession;

import com.example.project.model.dto.MemberVO;

public interface LoginDao {
	public boolean loginCheck(MemberVO vo);
	
	public MemberVO viewMember(MemberVO vo);
	
	public void logout(HttpSession session);
	
	

}
