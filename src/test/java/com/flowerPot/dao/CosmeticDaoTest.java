package com.flowerPot.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.vo.CosmeticVo;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/test-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Slf4j
public class CosmeticDaoTest {

	@Autowired
	private CosmeticDao cosmeticDao;
	
	@Test
	public void insertCosmetic() {
		cosmeticDao.deleteByName("화장품이름");
		int before = cosmeticDao.selectCount();
		//int cno, String type, String brand, String skinType, int price, int discountPersent, int stockNumber
		CosmeticVo c = new CosmeticVo(0,"화장품이름","스킨","이니스프리","스킨타입",111,0,100);
		cosmeticDao.insertCosmetic(c);
		int after = cosmeticDao.selectCount();
		assertThat(before, is(after-1));
		
		log.info("cno : "+c.getCno());  // selectKey 가져오는지
		assertNotEquals(c.getCno(),0);
		cosmeticDao.deleteByName("화장품이름");
	}
}
