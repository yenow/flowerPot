package com.flowerPot.cosmeticReview.service;

import java.util.List;

import com.flowerPot.vo.CosmeticReviewVo;

public interface CosmeticReviewService {

	void insertcosmeticReview(CosmeticReviewVo cosmeticReview);

	List<CosmeticReviewVo> selectListCosmeticReviewListByCno(Integer cno);

	List<CosmeticReviewVo> selectListCosmeticReviewByBrand(String brand);

	List<CosmeticReviewVo> selectListCosmeticReviewListByBrand(String brand);

}
