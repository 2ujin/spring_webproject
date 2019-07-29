package com.example.project.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.model.dto.BoardVO;
@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void create(BoardVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert("board.insert",vo);
		
	}

	@Override
	public BoardVO read(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.view",bno);
	}

	@Override
	public void update(BoardVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update("board.updateArticle",vo);
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		sqlSession.delete("board.deleteArticle",bno);
		
	}

	@Override
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) {
		// TODO Auto-generated method stub
		Map<String, String> map=new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("board.listAll",map);
	}
	
	public int countArticle(int start, int end, String searchOption, String keyword) {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectOne("board.countArticle",map);
	}
	

	@Override
	public void increaseViewcnt(int bno) {
		// TODO Auto-generated method stub
		sqlSession.update("board.increaseViewcnt",bno);
		
	}

	@Override
	public int countArticle(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

}






