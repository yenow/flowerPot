package com.flowerPot.test;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.description.repository.DescriptionDao;
import com.flowerPot.vo.CosmeticVo;

@Component
public class CosmeticTestCase {
	
	@Autowired
	private CosmeticDao cosmeticDao;
	@Autowired
	private DescriptionDao descriptionDao;
	
	public List<CosmeticVo> insertCosmeticTestCase() {
		List<CosmeticVo> cList= new ArrayList<CosmeticVo>();
		descriptionDao.deleteAll();
		for(int i=1;i<=10;i++) {
			
			// 이거전에 제약조건과 관련된 테이블을 삭제하는 코드가 있어야함,,, 이거는 계속있어야할듯
			cosmeticDao.deleteByName("name"+i); 
			CosmeticVo cosmetic =  new CosmeticVo(0, "name"+i, "type"+i, "brand"+i,"content"+i ,"skinType"+i, i, "tag"+i, i, i, 0, LocalDateTime.now(), "mappingURL"+i);
			cosmeticDao.insertCosmetic(cosmetic);
			cList.add(cosmetic);
		}
		return cList;
	}
}
