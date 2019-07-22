package com.example.project.service;

import java.util.List;

import com.example.project.model.dto.MemberVO;

public interface MemberService {
	//1. ȸ�� ��� ����
	public List<MemberVO> memberList();
	
	//2. ȸ�� �Է��ϱ�
	public void insertMember(MemberVO vo);
	
	//3. ȸ������ �󼼺���
	public MemberVO viewMember();
	
	//4. ȸ������ �����ϱ�
	public void updateMember(MemberVO vo);
	
	//5. ȸ������ �����ϱ�
	public void deleteMember(String userId);
	

}
