package com.example.project.model.dao;

import java.util.List;

import com.example.project.model.dto.ReplyVO;

public interface ReplyDAO {
	
	public List<ReplyVO> list(int bno);
	public void create(ReplyVO vo);
	public void update(ReplyVO vo);
	public void delete(int rno);

}
