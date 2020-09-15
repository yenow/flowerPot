package com.flowerPot.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.flowerPot.vo.CosmeticVo;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Slf4j
public class CosmeticDaoTest {

	@Autowired
	private CosmeticDao cosmeticDao;
	
	@Test
	public void insertCosmetic() {
		cosmeticDao.deleteAll();
		int before = cosmeticDao.selectCount();
		CosmeticVo c = new CosmeticVo(0,"스킨","이니스프리",10000,"태그",0,100);
		cosmeticDao.insertCosmetic(c);
		int after = cosmeticDao.selectCount();
		assertThat(before, is(after-1));
	}
}
