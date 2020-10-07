package com.flowerPot.admin.dao;

import java.util.List;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.vo.EmpVo;
import com.flowerPot.vo.AuthorityVo;

public interface EmpMapper {

	List<EmpVo> selectEmpList(SearchVO search);

	void insertEmpOne(EmpVo emp);

	void deleteEmpOne(EmpVo emp);

	Integer countArticles(SearchVO search);

	void restoreEmpOne(EmpVo emp);

	List<AuthorityVo> selectEmpAuth();

}
