package com.example.project.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.project.model.dao.BoardDAO;
import com.example.project.model.dao.BoardDAOImpl;
import com.example.project.model.dto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	BoardDAOImpl boardDao;
	@Override
	public void create(BoardVO vo) {
		// TODO Auto-generated method stub
		
		boardDao.create(vo);
		
		
	}

	@Override
	public BoardVO read(int bno) {
		// TODO Auto-generated method stub
		return boardDao.read(bno);
	}

	@Override
	public void update(BoardVO vo) {
		// TODO Auto-generated method stub
		boardDao.update(vo);
		
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		boardDao.delete(bno);
		
	}

	@Override
	public List<BoardVO> listAll(int start, int end,String searchOption, String keyword) {
		// TODO Auto-generated method stub
		return boardDao.listAll(start,end,searchOption,keyword);
	}
	
	public int countArticle(String searchOption, String keyword) {
		return boardDao.countArticle(searchOption, keyword);
	}

	@Override
	public void increaseViewcnt(int bno,HttpSession session) {
		// TODO Auto-generated method stub
		
		boardDao.increaseViewcnt(bno);
		/*
		 * long update_time=0;
		 * 
		 * long current_time=System.currentTimeMillis(); if(current_time-update_time
		 * >5*1000) { System.out.println("current_time"+current_time);
		 * System.out.println("update_time"+update_time); boardDao.increaseViewcnt(bno);
		 * 
		 * }
		 */
			
	}

}










