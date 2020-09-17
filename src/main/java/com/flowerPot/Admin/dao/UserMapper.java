package com.flowerPot.Admin.dao;

import java.util.List;

import com.flowerPot.Admin.commons.SearchVO;
import com.flowerPot.Admin.vo.UserTVO;
import com.flowerPot.vo.MemberVo;

public interface UserMapper {
	
	public void insertUserT(UserTVO userT); 
	
	public List<MemberVo> selectUserT();

	public List<MemberVo> getArticleList(SearchVO search);

	public Integer countArticles(SearchVO search);
	
}
