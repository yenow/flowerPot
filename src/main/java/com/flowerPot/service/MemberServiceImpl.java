package com.flowerPot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowerPot.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberSerivce {

	@Autowired
	private MemberDao memberDao;
}
