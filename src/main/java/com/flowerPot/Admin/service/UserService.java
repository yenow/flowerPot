package com.flowerPot.Admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowerPot.Admin.commons.SearchVO;
import com.flowerPot.Admin.dao.UserMapper;
import com.flowerPot.Admin.vo.EmpVo;
import com.flowerPot.vo.MemberVo;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserMapper mapper;

	@Override
	public List<MemberVo> selectUserT() {
		
		return mapper.selectUserT();
	}

	@Override
	public List<MemberVo> getArticleList(SearchVO search) {
		return mapper.getArticleList(search);
	}

	@Override
	public Integer countArticles(SearchVO search) {
		return mapper.countArticles(search);
	}
	

	@Override
	public void insertEmpOne(EmpVo emp) {
		mapper.insertEmpOne(emp);
	}

	
	
	
}
