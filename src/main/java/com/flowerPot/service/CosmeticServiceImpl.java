package com.flowerPot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowerPot.dao.CosmeticDao;
import com.flowerPot.dao.DescriptionDao;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

@Service
public class CosmeticServiceImpl implements CosmeticService {
	
	@Autowired
	private CosmeticDao cosmeticDao;
	@Autowired
	private DescriptionDao descriptionDao;


	@Override
	public void cosmetic_register_ok(CosmeticVo cosmetic, DescriptionVo description) {
		cosmeticDao.insertCosmetic(cosmetic);
		descriptionDao.insertDescription(description);
	}
	
	
}
