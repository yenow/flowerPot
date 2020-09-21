package com.flowerPot.Admin.service;

import java.util.List;

import com.flowerPot.Admin.commons.SearchVO;
import com.flowerPot.Admin.vo.EmpVo;
import com.flowerPot.vo.MemberVo;

public interface IUserService {

	public List<MemberVo> selectUserT();

	public List<MemberVo> getArticleList(SearchVO search);

	public Integer countArticles(SearchVO search);

	
	public void insertEmpOne(EmpVo emp);

}
