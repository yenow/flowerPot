package com.flowerPot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowerPot.dao.AuthorityDao;
import com.flowerPot.dao.MemberDao;
import com.flowerPot.dao.memberMapper;
import com.flowerPot.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberSerivce {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private AuthorityDao authorityDao;
	
	@Autowired
	private memberMapper mapper;

	@Transactional
	@Override
	public void insertMember(MemberVo member) {
		memberDao.insertMember(member);
		authorityDao.insertAuthority(member);
	}

	@Override
	public void register(MemberVo member) {
		mapper.register(member);
		
	}

	@Override
	public Integer checkId(String member) {
		return mapper.checkId(member);
	}

	@Override
	public void delete(String member) {
		mapper.delete(member);
	}

	@Override
	public MemberVo selectOne(String member) {
		return mapper.selectOne(member);
	}

	@Override
	public List<MemberVo> selectAll() {

		return mapper.selectAll();
	}
}
