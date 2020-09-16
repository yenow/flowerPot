package com.flowerPot.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertThat;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/test-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Slf4j
public class DescriptionDaoTest {

	@Autowired
	private DescriptionDao descriptionDao;
	@Autowired
	private CosmeticDao cosmeticDao;
	
	private CosmeticVo c;
	@Before
	public void testCaseCosmetic() {
		cosmeticDao.deleteAll();
		int before = cosmeticDao.selectCount();
		c = new CosmeticVo(0,"스킨","이니스프리","지성",10000,"태그",0,100);
		cosmeticDao.insertCosmetic(c);
		int after = cosmeticDao.selectCount();
		assertThat(before, is(after-1));
		log.info("cno : "+c.getCno());  // selectKey 가져오는지
		assertNotEquals(c.getCno(),0);
	}
	
	@Test
	public void insertCosmetic() {
		descriptionDao.deleteAll();
		int before = descriptionDao.selectCount();
		DescriptionVo d = new DescriptionVo(c.getCno(),1000,1000,"설명","국가");
		descriptionDao.insertDescription(d);
		int after = descriptionDao.selectCount();
		assertThat(before, is(after-1));
	}
	
	@After
	public void delete() {
		descriptionDao.deleteAll();
		cosmeticDao.deleteAll();
	}
}
