package com.example.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.project.model.dao.MemberDAOImpl;
import com.example.project.model.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAOImpl memberDao;
	
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return memberDao.memberList();
	}

	@Override
	public void insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		memberDao.insertMember(vo);
		
	}

	@Override
	public MemberVO viewMember(String userId) {
		// TODO Auto-generated method stub
		return memberDao.viewMember(userId);
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		memberDao.updateMember(vo);
		
	}

	@Override
	public void deleteMember(String userId) {
		// TODO Auto-generated method stub
		memberDao.deleteMember(userId);
	}
	
	public boolean checkPw(String userId, String userPw)
	{
		return memberDao.checkPw(userId, userPw);
	}

}















