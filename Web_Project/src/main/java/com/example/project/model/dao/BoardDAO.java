package com.example.project.model.dao;

import java.util.List;

import com.example.project.model.dto.BoardVO;

public interface BoardDAO {
	//1. 게시글 작성하기 
	public void create(BoardVO vo);
	
	//2. 게시글 상세보기 
	public BoardVO read(int bno);
	
	//3. 게시글 수정하기 
	public void update(BoardVO vo);
	
	//4. 게시글 삭제하기 
	public void delete(int bno);
	
	//5. 게시글 목록 보기 (전체)
	public List<BoardVO> listAll(int start, int end,String searchOption, String keyword);
	
	//6. 게시글 조회하기 
	public void increaseViewcnt(int bno);
	
	//7. 게시글 레코드 갯수
	public int countArticle(String searchOption, String keyword);

}
