package com.flowerPot.dao;

import java.util.List;

import com.flowerPot.vo.MagazineVo;

public interface MagazineDao {

	void insertMagazine(MagazineVo magazine);

	List<MagazineVo> selectMagazineList();

}
