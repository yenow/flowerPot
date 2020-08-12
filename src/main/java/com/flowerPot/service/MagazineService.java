package com.flowerPot.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.flowerPot.vo.MagazineVo;

public interface MagazineService {

	MagazineVo insertMagazine(MagazineVo magazine, MultipartHttpServletRequest mrequset);

}
