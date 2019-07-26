package com.example.project.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
		String title = vo.getTitle();
		String content = vo.getContent();
		String writer = vo.getWriter();
		
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		BoardDao.create(vo);
	}

	@Override
	public BoardVO read(int bno) {
		// TODO Auto-generated method stub
		return BoardDao.read(bno);
	}

	@Override
	public void update(BoardVO vo) {
		// TODO Auto-generated method stub
		BoardDao.update(vo);
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		BoardDao.delete(bno);
	}

	@Override
	public List<BoardVO> listAll(String searchoption, String keyword) {
		// TODO Auto-generated method stub
		return BoardDao.listAll(searchoption, keyword);
	}
	
	public int countArticle(String searchoption, String keyword) {
		return BoardDao.countArticle(searchoption, keyword);
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession session) {
		
		BoardDao.increaseViewcnt(bno);
		
		/*
		long update_time = 0;
		
		long current_time = System.currentTimeMillis();
		if(current_time-update_time > 5*1000) {
			
		}
		*/
	}

}
