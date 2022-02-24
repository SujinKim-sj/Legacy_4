package com.spring.s1.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.spring.s1.notice.NoticeDAO.";
	
	//Detail
	public NoticeDTO detail(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "detail", noticeDTO);
	}
	
	//List
	public List<NoticeDTO> list() throws Exception{
		return sqlSession.selectList(NAMESPACE + "list");
	}
	
	//Insert
	public int add(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "add", noticeDTO);
	}
	
	//Delete
	public int delete(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.delete(NAMESPACE + "delete", noticeDTO);
	}
}
