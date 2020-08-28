package com.flowerPot.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.flowerPot.vo.MemberVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class MemberDaoTest {

	@Autowired
	private MemberDao memberDao;
	
	@Test
	public void read() {
		MemberVo m = memberDao.read("user1");
		System.out.println(m.getId());
		System.out.println(m.getAuthList());
		System.out.println(m.getAuthList().toString());
	}
}
