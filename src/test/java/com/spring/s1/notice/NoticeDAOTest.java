package com.spring.s1.notice;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.s1.MyJunitTest;

public class NoticeDAOTest extends MyJunitTest{

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Test
	public void check() {
		assertNotNull(noticeDAO);
	}
	
	//List
	@Test
	public void listTest() throws Exception {
		List<NoticeDTO> ar = noticeDAO.list();
		
		assertNotEquals(0, ar.size());
	}
	
	//Detail
	@Test
	public void detailTest() throws Exception {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNoticeNum(1L);
		noticeDTO = noticeDAO.detail(noticeDTO);
		
		assertNotNull(noticeDTO);
	}
	
	//Insert
	@Test
	public void addTest() throws Exception {
		NoticeDTO noticeDTO = new NoticeDTO();
		for(int i = 0; i < 100; i++) {
			noticeDTO.setNoticeTitle("NoticeTitle" + i);
			noticeDTO.setNoticeContents("NoticeContents" + i);
			noticeDTO.setNoticeWriter("Writer" + i);
			
			int result = noticeDAO.add(noticeDTO);
			
			if(i % 10 == 0) {
				Thread.sleep(1000);
			}
		}
		
		System.out.println("Insert Finish");
		//assertEquals(1, result);
	}
	
	//Delete
//	@Test
//	public void deleteTest() throws Exception {
//		NoticeDTO noticeDTO = new NoticeDTO();
//		noticeDTO.setNoticeNum(22L);
//		
//		int result = noticeDAO.delete(noticeDTO);
//		
//		assertEquals(1, result);
//	}
}
