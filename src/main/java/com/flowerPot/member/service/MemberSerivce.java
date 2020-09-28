package com.flowerPot.member.service;

import java.util.List;

import com.flowerPot.vo.MemberVo;

public interface MemberSerivce {

	//회원 가입기능
	void insertMember(MemberVo member);

	Integer checkId(String member);

	Integer checkEmail(String member);

	Integer checkPhone(String member);

	

}
