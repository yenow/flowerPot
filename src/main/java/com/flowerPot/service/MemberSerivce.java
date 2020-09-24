package com.flowerPot.service;

import java.util.List;

import com.flowerPot.vo.MemberVo;

public interface MemberSerivce {

	//회원 가입기능
	void insertMember(MemberVo member);
	//회원가입기능
	void register(MemberVo member);

	Integer checkId(String account);

	//회원탈퇴 기능
	void delete(String account);

	//회원정보 조회 기능
	MemberVo selectOne(String account);

	//회원정보 전체 조회기능
	List<MemberVo> selectAll();

}
