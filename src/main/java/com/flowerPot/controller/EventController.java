package com.flowerPot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.semiadmin.model.AttenVO;
import com.flowerPot.semiadmin.service.AttenServiceImpl;
import com.flowerPot.semiadmin.service.IAttenService;

@Controller
@RequestMapping("/event")
public class EventController {

	@Autowired
	private IAttenService attenService;
	
	@RequestMapping("/event")
	public void event(Model model) {
		
		
	}
	
	@RequestMapping("/attencheck")
	public void attencheck(Model model) {
		System.out.println("출석체크 작동중");
		List<AttenVO> av = attenService.getAttendance() ;
		model.addAttribute("av", av);
	}
}
