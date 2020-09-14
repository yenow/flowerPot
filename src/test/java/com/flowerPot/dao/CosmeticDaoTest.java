package com.flowerPot.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.flowerPot.vo.CosmeticVo;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Slf4j
public class CosmeticDaoTest {

	@Autowired
	private CosmeticDao cosmeticDao;
	
	@Test
	public void insertCosmetic() {
		CosmeticVo c = new CosmeticVo();
		
	}
}
