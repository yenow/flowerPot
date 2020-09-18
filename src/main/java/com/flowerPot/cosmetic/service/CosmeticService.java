package com.flowerPot.cosmetic.service;

import java.util.List;

import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

public interface CosmeticService {

	void insertCosmeticAndDescription(CosmeticVo cosmetic, DescriptionVo description);

	List<CosmeticVo> selectListCosmeticByCategory(Criteria c);

	CosmeticVo selectOneCosmeticByCno(Integer cno);

}
