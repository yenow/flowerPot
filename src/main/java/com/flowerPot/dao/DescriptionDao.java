package com.flowerPot.dao;

import com.flowerPot.vo.DescriptionVo;

public interface DescriptionDao {

	void insertDescription(DescriptionVo description);

	void deleteAll();

	int selectCount();

}
