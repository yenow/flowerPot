package com.flowerPot.member.service;

import java.util.List;
import com.flowerPot.member.vo.MemberDTO;
import com.flowerPot.vo.MemberVo;

public interface MemberSerivce {

	//회원 가입기능
	void insertMember(MemberVo member);
	//아이디 중복체크
	Integer checkId(String member);
	//이메일 중복 체크
	Integer checkEmail(String member);
	//휴대폰 중복 체크
	Integer checkPhone(String member);

	MemberVo selectOneDeliMemById(String id);

	//회원조회
	public MemberVo selectOneMemberById(String id);
	//이메일 전송체크
	public void authentication(MemberDTO dto);

	//회원 수정
	public void updateMember(MemberVo vo) throws Exception;

	//비밀번호 수정
	public void passwordUpdate(MemberVo vo) throws Exception;

	//회원정보 조회
	MemberVo viewMember(String id);

}
