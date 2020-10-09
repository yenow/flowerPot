package com.flowerPot.member.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowerPot.dao.AuthorityDao;
import com.flowerPot.member.repository.MemberDao;
import com.flowerPot.member.vo.MemberDTO;
import com.flowerPot.memberAddress.repository.MemberAddressDao;
import com.flowerPot.vo.MemberAddressVo;
import com.flowerPot.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberSerivce {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private AuthorityDao authorityDao;
	
	@Autowired
	private MemberAddressDao memberAddressDao;

	@Transactional
	@Override
	public void insertMember(MemberVo member, MemberAddressVo memAddressVo) {
		memberDao.insertMember(member);
		System.out.println("회원번호:"+member.getMno());
		memAddressVo.setMno(member.getMno());
		memberAddressDao.insertMemberAddress(memAddressVo);
		authorityDao.insertAuthority(member);
	}
	@Override
	public void updateMember(MemberVo vo, MemberAddressVo memberAddress) throws Exception {
		memberDao.updateMember(vo);
		memberAddressDao.updateMemberAddress(memberAddress);
	}

	@Override
	public MemberVo selectOneMemberById(String id) {		
		return memberDao.selectOneMemberById(id);
	}


	public Integer checkId(String member) {
		return memberDao.checkId(member);
	}


	@Override
	public Integer checkEmail(String member) {
		return memberDao.checkEmail(member);
	}


	@Override
	public Integer checkPhone(String member) {
		return memberDao.checkPhone(member);
	}


	@Override
	public MemberVo selectOneDeliMemById(String id) {
		return memberDao.selectOneDeliMemById(id);
	}

	
	public void authentication(MemberDTO dto) {
		memberDao.authentication(dto);
	}

	//회원 정보 업데이트 수정문
	@Override
	public void updateMember(MemberVo vo) throws Exception {
		memberDao.updateMember(vo);
	}

	
	@Override
	public void passwordUpdate(MemberVo vo) throws Exception {
		memberDao.updatePassword(vo);
	}


	@Override
	public MemberVo viewMember(String id) {
		return memberDao.viewMember(id);
	}

	@Override
	public void insertMember(MemberVo member) {
		
	}
	


}
