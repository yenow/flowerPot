package com.flowerPot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.service.MagazineService;

@Controller
@RequestMapping("/magazine")
public class MagazineController {

	@Autowired
	private MagazineService magazineService;
	
	@RequestMapping("/magazine/magazine")
	public void magazine() {
		
	}

	
	@RequestMapping("magazine_writer")
	public void magazine_writer() {
		
	}

}
