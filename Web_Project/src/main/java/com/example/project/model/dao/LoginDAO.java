package com.example.project.model.dao;

import javax.servlet.http.HttpSession;

import com.example.project.model.dto.MemberVO;

public interface LoginDAO {
	//1. �α��� üũ
	public boolean loginCheck(MemberVO vo);
		
	//2. ȸ�� �α��� ����
	public MemberVO viewMember(MemberVO vo);
	
	//3. ȸ�� �α׾ƿ�
	public void logout(HttpSession session);

}
