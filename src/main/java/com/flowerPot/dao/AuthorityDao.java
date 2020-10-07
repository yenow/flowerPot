package com.flowerPot.dao;

import java.util.Map;

import com.flowerPot.vo.MemberVo;

public interface AuthorityDao {

	void insertAuthority(MemberVo member);

	int selectTotalCount();

	void deleteAuthorityById(String id);

	void insertAuthorityById(Map<String, Object> map);

}
