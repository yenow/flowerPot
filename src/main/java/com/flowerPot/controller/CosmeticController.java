package com.flowerPot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.flowerPot.service.CosmeticService;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("cosmetic")
@Slf4j
public class CosmeticController {

	@Autowired
	private CosmeticService cosmeticService;
	
	@RequestMapping("cosmetic")
	public void cosmetic() {
		
	}
	
	@RequestMapping("cosmetic_register")
	public void cosmetic_register() {
		
	}
	
	@RequestMapping(value = "cosmetic_register_ok", method = RequestMethod.POST)
	public String cosmetic_register_ok(CosmeticVo cosmetic,  DescriptionVo description) {
		log.info("cosmetic : " + cosmetic.toString());
		log.info("description : " + description.toString());
		cosmeticService.cosmetic_register_ok(cosmetic,description);
		
		return "cosmetic/cosmetic";
	}
}
