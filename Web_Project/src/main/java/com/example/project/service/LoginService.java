package com.example.project.service;

import javax.servlet.http.HttpSession;

import com.example.project.model.dto.MemberVO;

public interface LoginService {
	//1. �α��� üũ�ϱ�
	public boolean loginCheck(MemberVO vo, HttpSession session);
	
	//2. ȸ�� �α��� ���� 
	public MemberVO viewMember(MemberVO vo);
	
	//3. ȸ�� �α׾ƿ��ϱ�
	public void logout(HttpSession session);

}
