package com.flowerPot.cosmetic.repository;

import com.flowerPot.vo.CosmeticVo;

public interface CosmeticDao {

	void insertCosmetic(CosmeticVo c);

	void deleteAll();

	int selectCount();

	void deleteByName(String name);

}
