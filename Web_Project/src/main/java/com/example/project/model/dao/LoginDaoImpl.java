package com.example.project.model.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.model.dto.MemberVO;

@Repository
public class LoginDaoImpl implements LoginDao{
	
	@Inject
	SqlSession sqlSession;

	@Override
	public boolean loginCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		String name=sqlSession.selectOne("login.loginCheck",vo);
		System.out.print(name);
		return (name==null)?false:true;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("login.viewMember",vo);
		
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

}
