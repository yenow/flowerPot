package com.flowerPot.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CosmeticDaoImpl implements CosmeticDao {

	@Autowired
	private SqlSession sqlSession;
	
}
