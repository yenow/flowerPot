package com.flowerPot.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flowerPot.attachFile.service.AttachFileService;
import com.flowerPot.service.CosmeticService;
import com.flowerPot.vo.AttachFileVo;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("cosmetic")
@Slf4j
public class CosmeticController {

	@Autowired
	private CosmeticService cosmeticService;
	// @Autowired
	@Autowired
	private AttachFileService attachFileService;
	
	
	@RequestMapping("cosmetic")
	public void cosmetic() {
		
	}
	
	@RequestMapping("cosmetic_register")
	public void cosmetic_register() {
		
	}
	
	@RequestMapping(value = "cosmetic_register_ok", method = RequestMethod.POST)
	@ResponseBody
	public String cosmetic_register_ok(CosmeticVo cosmetic,  DescriptionVo description) {
		log.info("cosmetic : " + cosmetic.toString());
		log.info("description : " + description.toString());
		cosmeticService.cosmetic_register_ok(cosmetic,description);
		
		return "cosmetic/cosmetic";
	}
	
	@RequestMapping(value = "cosmeticRegister", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> cosmeticRegister(CosmeticVo cosmetic,  DescriptionVo description){
		ResponseEntity<String> r = null;
		
		log.info("cosmetic : "+cosmetic.toString());
		log.info("description : "+description.toString());
		
		// cno 값을 리턴해야함
		r= new ResponseEntity<>(HttpStatus.OK);
		return r;
	}
	
	@RequestMapping(value = "AttachRegister", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> AttachRegister(@RequestBody List<AttachFileVo> attachList ){ //Map<String, Object> params
		ResponseEntity<String> r = null;
		log.info("attach : "+attachList.toString());
		
		r= new ResponseEntity<>(HttpStatus.OK);
		return r;
	}
}
