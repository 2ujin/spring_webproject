package com.example.project.service;

import java.util.List;

import javax.inject.Inject;

import com.example.project.model.dao.ReplyDAO;
import com.example.project.model.dto.ReplyVO;

public class ReplyServiceImpl implements ReplyService{

	@Inject
	ReplyDAO replyDao;
	
	@Override
	public void create(ReplyVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(ReplyVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int rno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReplyVO> list(int bno) {
		// TODO Auto-generated method stub
		return replyDao.list(bno);
	}

}
