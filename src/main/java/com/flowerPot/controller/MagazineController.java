package com.flowerPot.controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.flowerPot.dao.MagazineDao;
import com.flowerPot.service.MagazineService;
import com.flowerPot.vo.MagazineVo;

@Controller
@RequestMapping("/magazine")
public class MagazineController {

	@Autowired
	private MagazineService magazineService;
	
	@RequestMapping("magazine")
	public void magazine() {
		
	}
	
	@RequestMapping("magazine_writer")
	public void magazine_writer() {
		
	}
	
	@PostMapping("magazine_writer_ok")
	public String magazine_writer_ok(HttpServletRequest request, MultipartHttpServletRequest mrequset) {
		/*
		 * System.out.println(magazine.getTitle());
		 * System.out.println(magazine.getContent());
		 * System.out.println(magazine.getCategory());
		 */
		MagazineVo magazine =  new MagazineVo();
		magazine.setTitle(request.getParameter("title"));
		magazine.setContent(request.getParameter("content"));
		magazine.setCategory(request.getParameter("category"));
	
		magazine = magazineService.insertMagazine(magazine,mrequset);
		
		
	
		
		return "redirect:/";   // +request.getContextPath();
	}

}
