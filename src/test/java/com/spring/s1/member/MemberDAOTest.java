package com.spring.s1.member;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.s1.MyJunitTest;

public class MemberDAOTest extends MyJunitTest{

	@Autowired
	private MemberDAO memberDAO;
	
	@Test
	public void test() {
		assertNotNull(memberDAO);
	}
	
	@Test
	public void loginTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("ID1");
		memberDTO.setPw("PW1");
		
		memberDTO = memberDAO.login(memberDTO);
		assertNotNull(memberDTO);
	}
	
	
	//@Test
	public void joinTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("id2");
		memberDTO.setPw("pw2");
		memberDTO.setName("name2");
		memberDTO.setPhone("0102225443");
		memberDTO.setEmail("id2@naver.com");
		
		int result = memberDAO.join(memberDTO);
		
		assertEquals(1, result);
	}

}
