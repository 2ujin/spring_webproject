package com.example.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.project.model.dao.BoardDAOImpl;
import com.example.project.model.dto.BoardVO;

@Service
public class BoardServiceimpl implements BoardService{

	@Inject
	BoardDAOImpl BoardDao;
	
	@Override
	public void create(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO read(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardVO> listAll() {
		// TODO Auto-generated method stub
		return BoardDao.listAll();
	}

	@Override
	public void increaseViewcnt(int bno) {
		// TODO Auto-generated method stub
		
	}

}
