package com.flowerPot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flowerPot.vo.MagazineVo;

@Repository
public class MagazineDaoImpl implements MagazineDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMagazine(MagazineVo magazine) {
		sqlSession.insert("insertMagazine", magazine);
	}

	@Override
	public List<MagazineVo> selectMagazineList() {
		return sqlSession.selectList("selectMagazineList");
	}
	
}
