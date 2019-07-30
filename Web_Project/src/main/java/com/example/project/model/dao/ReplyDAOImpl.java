package com.example.project.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.model.dto.ReplyVO;

public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ReplyVO> list(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reply.listReply", bno);
	}

	@Override
	public void create(ReplyVO vo) {
		sqlSession.insert("reply/insert", vo);
		
	}

	@Override
	public void update(ReplyVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		
	}

}
