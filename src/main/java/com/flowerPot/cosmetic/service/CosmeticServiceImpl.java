package com.flowerPot.cosmetic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowerPot.attachFile.repository.AttachFileDao;
import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.dao.DescriptionDao;
import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.AttachFileVo;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CosmeticServiceImpl implements CosmeticService {
	
	@Autowired
	private CosmeticDao cosmeticDao;
	@Autowired
	private DescriptionDao descriptionDao;
	@Autowired
	private AttachFileDao attachFileDao;

	@Transactional
	@Override
	public void insertCosmeticAndDescription(CosmeticVo cosmetic, DescriptionVo description) {
		cosmeticDao.insertCosmetic(cosmetic);
		description.setCno(cosmetic.getCno());
		descriptionDao.insertDescription(description);
	}

	@Override
	public List<CosmeticVo> selectListCosmeticByCategory(Criteria c) {
		 List<CosmeticVo> cList = cosmeticDao.selectListCosmeticByCategory(c);
		 for(CosmeticVo cosmetic : cList) {
			 List<AttachFileVo> mappingURLList = attachFileDao.selectMappingURLByCno(cosmetic.getCno());
			 if(mappingURLList.size()!=0) {
				 cosmetic.setMappingURL(mappingURLList.get(0).getMappingURL());
				 log.info("cosmetic : "+cosmetic.toString());
			 }
		 }
		 return cList;
	}

}
