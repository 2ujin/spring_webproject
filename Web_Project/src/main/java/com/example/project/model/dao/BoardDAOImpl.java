package com.example.project.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.model.dto.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Inject
	SqlSession sqlSession;
	
	
	@Override
	public void create(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO read(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.view", bno);
	}

	@Override
	public void update(BoardVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update("board.update", vo);
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		sqlSession.delete("board.delete", bno);
	}

	@Override
	public List<BoardVO> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("board.listAll");
	}

	@Override
	public void increaseViewcnt(int bno) {
		// TODO Auto-generated method stub
		
	}

}
