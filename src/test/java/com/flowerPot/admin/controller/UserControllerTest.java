package com.flowerPot.admin.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.flowerPot.Admin.dao.UserMapper;
import com.flowerPot.Admin.vo.MemberVO;
import com.flowerPot.Admin.vo.UserTVO;
import com.flowerPot.vo.MemberVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserControllerTest {
	
	@Autowired
	private UserMapper mapper;
	
	@Test
	public void userInsertTest() {
		for(int i=1; i<=367; i++) {
			UserTVO userT = new UserTVO();
			userT.setMno(i);
			userT.setId("id"+i);
			userT.setName("이름"+i);
			mapper.insertUserT(userT);
			System.out.println("게시물 등록 성공!");
		}
	}
	
	@Test
	public void userSelectTest() {
		mapper.selectUserT().forEach(userT -> System.out.println("회원 목록 : "+userT));
	}
	@Test
	public void memSelectTest() {
		mapper.selectUserT().forEach(userT -> System.out.println("회원 목록 : "+userT));
	}
	
	@Test
	public void realMemListTest() {
		for(int i=1; i<=367; i++) {
			MemberVo memT = new MemberVo();
			//memT.set
		}
	}
}