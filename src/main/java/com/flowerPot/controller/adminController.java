package com.flowerPot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class adminController {

	@RequestMapping("/dashboard")
	public void dashboard() {
		
	}
}