package com.flowerPot.cosmetic.controller;

import java.util.List;

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
import com.flowerPot.cosmetic.service.CosmeticService;
import com.flowerPot.domain.Criteria;
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
	@Autowired
	private AttachFileService attachFileService;
	
	
	@RequestMapping("cosmetic")
	public void cosmetic(Model m,Criteria c) {
		List<CosmeticVo> cList = cosmeticService.selectListCosmeticByCategory(c);
	}
	
	@RequestMapping("cosmetic_register")
	public void cosmetic_register() {
		
	}
	
	/*
	@RequestMapping(value = "cosmetic_register_ok", method = RequestMethod.POST)
	@ResponseBody
	public String cosmetic_register_ok(CosmeticVo cosmetic,  DescriptionVo description) {
		log.info("cosmetic : " + cosmetic.toString());
		log.info("description : " + description.toString());
		cosmeticService.cosmetic_register_ok(cosmetic,description);
		
		return "cosmetic/cosmetic";
	}
	*/
	
	@RequestMapping(value = "cosmeticRegister", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> cosmeticRegister(CosmeticVo cosmetic,  DescriptionVo description){
		ResponseEntity<String> r = null;
		
		log.info("cosmetic : "+cosmetic.toString());
		log.info("description : "+description.toString());
		
		try {
			cosmeticService.insertCosmeticAndDescription(cosmetic,description);
			r= new ResponseEntity<String>(Integer.toString(cosmetic.getCno()),HttpStatus.OK);
		} catch (Exception e) {
			r= new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		log.info("cosmetic cno : "+cosmetic.toString());
		return r;
	}
	
	@RequestMapping(value = "AttachRegister", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> AttachRegister(@RequestBody List<AttachFileVo> attachList ){ //Map<String, Object> params
		ResponseEntity<String> r = null;
		log.info("attach : "+attachList.toString());
		try {
			for(AttachFileVo attach : attachList) {
				attachFileService.insertAttachFile(attach);
			}
			r= new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			r= new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return r;
	}
}
