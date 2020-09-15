package com.flowerPot.dao;

import com.flowerPot.vo.CosmeticVo;

public interface CosmeticDao {

	void insertCosmetic(CosmeticVo c);

	void deleteAll();

	int selectCount();

}
