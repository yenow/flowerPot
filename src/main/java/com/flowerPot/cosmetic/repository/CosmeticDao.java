package com.flowerPot.cosmetic.repository;

import java.util.List;

import com.flowerPot.domain.CosmeticCriteria;
import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.CosmeticVo;

public interface CosmeticDao {

	void insertCosmetic(CosmeticVo c);

	void deleteAll();

	int selectCount();

	void deleteByName(String name);

	List<CosmeticVo> selectListCosmeticByCategory(CosmeticCriteria c);
	
	List<CosmeticVo> selectListCosmeticByCategory2(CosmeticCriteria c);

	CosmeticVo selectOneCosmeticByCno(Integer cno);

	void updateCosmeticHitsByCno(Integer cno);

	int selectCountByCategory(CosmeticCriteria c);

	void updateHits(Integer cno);

	List<CosmeticVo> getProductlist();


}
