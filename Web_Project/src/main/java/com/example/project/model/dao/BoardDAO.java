package com.example.project.model.dao;

import java.util.List;

import com.example.project.model.dto.BoardVO;

public interface BoardDAO {
	//1. �Խñ� �ۼ��ϱ� 
	public void create(BoardVO vo);
	
	//2. �Խñ� �󼼺��� 
	public BoardVO read(int bno);
	
	//3. �Խñ� �����ϱ� 
	public void update(BoardVO vo);
	
	//4. �Խñ� �����ϱ� 
	public void delete(int bno);
	
	//5. �Խñ� ��� ���� (��ü)
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword);
	
	//6. �Խñ� ��ȸ�ϱ� 
	public void increaseViewcnt(int bno);
	
	//7. �Խñ� ���ڵ� ����
	public int countArticle(String searchOption, String keyword);

}
