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

	//비밀번호 수정문
	@Override
	public void passwordUpdate(MemberVo vo) throws Exception {
		memberDao.updatePassword(vo);
	}


	@Override
	public MemberVo viewMember(String id) {
		return memberDao.viewMember(id);
	}

	@Override
	public void giveAdminAuth(String empId) {
		memberDao.giveAdminAuth(empId);
	}


}
