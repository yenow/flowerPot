package com.flowerPot.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flowerPot.vo.CosmeticVo;

@Repository
public class CosmeticDaoImpl implements CosmeticDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertCosmetic(CosmeticVo c) {
		sqlSession.insert("c_insertCosmetic", c);
	}

	@Override
	public void deleteAll() {
		sqlSession.delete("c_deleteAll");
	}

	@Override
	public int selectCount() {
		return sqlSession.selectOne("c_selectCount");
	}
	
}
