package com.spring.s1.qna;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.s1.MyJunitTest;

public class QnaDAOTest extends MyJunitTest{

	@Autowired
	private QnaDAO qnaDAO;
	
	@Test
	public void check() {
		assertNotNull(qnaDAO);
	}

	@Test
	public void listTest() throws Exception{
		List<QnaDTO> ar = qnaDAO.list();
		
		assertNotEquals(0, ar.size());
	}
	
	@Test
	public void detailTest() throws Exception {
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setNum(1L);
		qnaDTO = qnaDAO.detail(qnaDTO);
		assertNotNull(qnaDTO);
	}
	
	//@Test
	public void addTest() throws Exception {
		QnaDTO qnaDTO = new QnaDTO();
		int result = 0;
		
		for(int i = 2; i <= 100; i++) {
			qnaDTO.setTitle("title" + i);
			qnaDTO.setContents("content" + i);
			qnaDTO.setWriter("writer" + i);

			result = qnaDAO.add(qnaDTO);
		}
		
		assertEquals(100, result);
	}
	
	@Test
	public void deleteTest() throws Exception {
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setNum(101L);
		int result = qnaDAO.delete(qnaDTO);
		
		assertEquals(1, result);
	}
}
