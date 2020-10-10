package com.flowerPot.cosmeticReview.repository;

import java.util.List;

import com.flowerPot.vo.CosmeticReviewVo;

public interface CosmeticReviewDao {

	void insertcosmeticReview(CosmeticReviewVo cosmeticReview);

	List<CosmeticReviewVo> selectListCosmeticReviewListByCno(Integer cno);

	List<CosmeticReviewVo> selectListCosmeticReviewListByCnoRating(Integer cno);

	List<CosmeticReviewVo> selectListCosmeticReviewListByBrand(String brand);

	List<CosmeticReviewVo> selectListCosmeticReviewListById(CosmeticReviewVo cosmeticReviewVo);

	List<CosmeticReviewVo> selectListCosmeticReivewByMno(Integer mno);
}
