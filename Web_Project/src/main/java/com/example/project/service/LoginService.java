package com.example.project.service;

import javax.servlet.http.HttpSession;

import com.example.project.model.dto.MemberVO;

public interface LoginService {
	//1. �α��� üũ
	public boolean loginCheck(MemberVO vo, HttpSession session);
	
	//2. ȸ�� �α��� ����
	public MemberVO viewMember(MemberVO vo);
	
	//3. ȸ�� �α׾ƿ�
	public void logout(HttpSession session);
}
