package com.spring.s1.bankbook;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.s1.MyJunitTest;

public class BankBookDAOTest extends MyJunitTest{

	@Autowired
	private BankBookDAO bankBookDAO;
	
	@Test
	public void check() {
		assertNotNull(bankBookDAO);
	}
	
	//List
	@Test
	public void listTest() throws Exception{
		List<BankBookDTO> ar = bankBookDAO.list();
		
		assertNotEquals(0, ar.size());
	}
	
	//Insert
	@Test
	public void addTest() throws Exception{
		
		for(int i = 0; i < 10; i++) {
			BankBookDTO bankBookDTO = new BankBookDTO();
			bankBookDTO.setBookName("bookName" + i);
			bankBookDTO.setBookContents("Contents" + i);
			bankBookDTO.setBookRate(1.12 + i);
			bankBookDTO.setBookSale(1);
			
			int result = bankBookDAO.add(bankBookDTO);
			
		}
		System.out.println("insert finish");
		//assertEquals(1, result);
	}
	
	//Detail
	@Test
	public void detailTest() throws Exception {
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookNumber(2L);
		
		
		assertNotNull(bankBookDTO);
	}
	
	//Delete
	@Test
	public void deleteTest() throws Exception {
		BankBookDTO bankBookDTO = new BankBookDTO();
		
		int result = bankBookDAO.delete(bankBookDTO);
		
		assertEquals(1, result);  		//성공시 result = 1
	}
}
