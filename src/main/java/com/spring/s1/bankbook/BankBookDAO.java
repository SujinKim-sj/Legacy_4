package com.spring.s1.bankbook;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BankBookDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.spring.s1.bankbook.BankBookDAO.";
	
	//Detail
	public BankBookDTO detail(Long num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detail", num);
	}
	
	//List 
	public List<BankBookDTO> list() throws Exception{
		String name = "";
		return sqlSession.selectList(NAMESPACE + "list");
	}
	
	//insert 
	public int add(BankBookDTO bankBookDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "add", bankBookDTO);
	}
	
	//delete
	public int delete(BankBookDTO bankBookDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "delete", bankBookDTO);
	}
	
}