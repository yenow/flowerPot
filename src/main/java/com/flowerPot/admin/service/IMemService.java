package com.flowerPot.admin.service;

import java.util.List;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.vo.MemberVo;

public interface IMemService {

	public List<MemberVo> selectUserT();

	public List<MemberVo> getArticleList(SearchVO search);

	public Integer countArticles(SearchVO search);



}
