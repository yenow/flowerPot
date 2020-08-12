package com.flowerPot.service;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.flowerPot.dao.MagazineDao;
import com.flowerPot.vo.MagazineVo;

@Service
public class MagazineServiceImpl implements MagazineService {

	@Autowired
	private MagazineDao magazineDao;

	@Override
	public MagazineVo insertMagazine(MagazineVo magazine, MultipartHttpServletRequest mrequset) {
		MultipartFile multipart = mrequset.getFile("imgFile");
		
		String rootfolder = "C:\\upload"+File.separator;  // 
		LocalDateTime currentDateTime = LocalDateTime.now(); // 컴퓨터 현재 날짜 정보
		String today = currentDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));   // 오늘날짜 문자열 생성
		rootfolder = rootfolder + today + File.separator;
		File rootUrl = new File(rootfolder);    // 업로드될 폴더 Url,, 
		
		if(rootUrl.exists()==false) {  // 폴더가 없다면 폴더 생성
			rootUrl.mkdirs();
		}
		
		/* 원본 파일 이름 */
		String originalFileName = multipart.getOriginalFilename();
		
	
		/* UUID 생성, 새로운 파일 이름 */
		UUID uuid = UUID.randomUUID();
		String uuidName = uuid.toString();
		uuidName = uuidName + originalFileName.substring(originalFileName.lastIndexOf('.'));
		System.out.println(uuidName);
		
		File newImageFile = new File(rootUrl,uuidName);
		
		
		try {
			multipart.transferTo(newImageFile);   // 파일 생성
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		magazine.setOriginalName(originalFileName);  // 매거진 객체에 원본파일이름 저장
		magazine.setUUIDName(uuidName);  // 매거진 객체에 새로운파일 이름 저장
		magazine.setRootfolder(rootfolder);  // 매거진 객체에 폴더 경로 저장
		
		return magazine;
	}
	
}
