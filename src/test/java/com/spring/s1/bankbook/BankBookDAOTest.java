package com.spring.s1.bankbook;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.s1.MyJunitTest;
import com.spring.s1.util.Pager;

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
		Pager pager = new Pager();
		pager.makeRow();
		
		List<BankBookDTO> ar = bankBookDAO.list(pager);
		System.out.println(ar.get(0).getBookNumber());
		System.out.println(ar.get(9).getBookNumber());
		
		assertEquals(10, ar.size());
	}
	
	//Insert
	
	public void addTest() throws Exception{
		
		for(int i = 0; i < 200; i++) {
			BankBookDTO bankBookDTO = new BankBookDTO();
			bankBookDTO.setBookName("bookName" + i);
			bankBookDTO.setBookContents("Contents" + i);
			double rate = Math.random();	//0.0 ~ 1.0 미만 
			rate = rate * 1000;	//123.45678
			int r = (int)rate; // 123
			rate = r / 100.0; //1.23
			
			bankBookDTO.setBookRate(rate);	//총 3자리, 소숫점 2자리
			bankBookDTO.setBookSale(1);
			
			int result = bankBookDAO.add(bankBookDTO);
			
			if(i % 10 == 0) {
				Thread.sleep(1000);		//1초동안 멈추세요				
			}
		}
		System.out.println("insert finish");
		//assertEquals(1, result);
	}
	
	//Detail
	//@Test
	public void detailTest() throws Exception {
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookNumber(2L);
		
		
		assertNotNull(bankBookDTO);
	}
	
	//Delete
	//@Test
	public void deleteTest() throws Exception {
		BankBookDTO bankBookDTO = new BankBookDTO();
			
		int result = bankBookDAO.delete(bankBookDTO);
		
		assertEquals(1, result);  		//성공시 result = 1
	}
}
