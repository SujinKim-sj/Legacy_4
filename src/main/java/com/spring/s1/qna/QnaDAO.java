package com.spring.s1.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class QnaDAO {

	private SqlSession sqlSession;
	private final String NAMESPACE = "com.spring.s1.qna.QnaDAO.";
	
	//Detail
	public QnaDAO detail(QnaDTO qnaDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detail", qnaDTO);
	}
	
	//List
	public List<QnaDTO> list() throws Exception {
		return sqlSession.selectList(NAMESPACE + "list");
	}
	
	//Insert(Add)
	public int add(QnaDTO qnaDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "add", qnaDTO);
	}
	
	//Delete
	public int delete(QnaDTO qnaDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "delete", qnaDTO);
	}
}
