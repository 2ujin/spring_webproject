package com.example.project.service;

import java.util.List;

import com.example.project.model.dto.BoardVO;

public interface BoardService {
	//1. �Խñ� �ۼ��ϱ�
	public void create(BoardVO vo); 
	
	//2. �Խñ� �󼼺���
	public BoardVO read(int bno); //��ü
	
	//3. �Խñ� �����ϱ�
	public void update(BoardVO vo);
	
	//4. �Խñ� �����ϱ�
	public void delete(int bno);
	
	//5. �Խñ� ��Ϻ���
	public List<BoardVO> listAll();
	
	//6. �Խñ� ��ȸ�ϱ�
	public void increaseViewcnt(int bno);
}
