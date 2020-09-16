package com.flowerPot.cosmetic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.dao.DescriptionDao;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

@Service
public class CosmeticServiceImpl implements CosmeticService {
	
	@Autowired
	private CosmeticDao cosmeticDao;
	@Autowired
	private DescriptionDao descriptionDao;

	@Transactional
	@Override
	public void insertCosmeticAndDescription(CosmeticVo cosmetic, DescriptionVo description) {
		cosmeticDao.insertCosmetic(cosmetic);
		description.setCno(cosmetic.getCno());
		descriptionDao.insertDescription(description);
	}


}
