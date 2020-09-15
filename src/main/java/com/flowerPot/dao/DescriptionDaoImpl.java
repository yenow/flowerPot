package com.flowerPot.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flowerPot.vo.DescriptionVo;

@Repository
public class DescriptionDaoImpl implements DescriptionDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertDescription(DescriptionVo description) {
		sqlSession.insert("d_insertDescription",description);
	}

	@Override
	public void deleteAll() {
		sqlSession.delete("d_deleteAll");
	}

	@Override
	public int selectCount() {
		return sqlSession.selectOne("d_selectCount");
	}

}
