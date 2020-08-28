package com.flowerPot.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flowerPot.vo.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	public MemberVo read(String id) {
		return sqlSession.selectOne("read",id);
	}
}
