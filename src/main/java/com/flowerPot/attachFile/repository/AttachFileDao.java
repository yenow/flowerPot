package com.flowerPot.attachFile.repository;

import java.util.List;

import com.flowerPot.vo.AttachFileVo;

public interface AttachFileDao {

	public void insertAttachFile(AttachFileVo attachFile);

	public void deleteAll();

	public int selectCount();

	public List<String> selectMappingURLByCno(int cno);
}
