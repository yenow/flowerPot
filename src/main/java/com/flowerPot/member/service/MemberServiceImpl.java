package com.flowerPot.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowerPot.dao.AuthorityDao;
import com.flowerPot.member.repository.MemberDao;
import com.flowerPot.member.vo.MemberDTO;
import com.flowerPot.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberSerivce {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private AuthorityDao authorityDao;
	

	@Transactional
	@Override
	public void insertMember(MemberVo member) {
		memberDao.insertMember(member);
		authorityDao.insertAuthority(member);
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
	public void authentication(MemberDTO dto) {
		memberDao.authentication(dto);
	}


	@Override
	public void updateMember(MemberVo vo) throws Exception {
		memberDao.updateMember(vo);
	}


	@Override
	public void passwordUpdate(MemberVo vo) throws Exception {
		memberDao.updatePassword(vo);
		
	}
}
