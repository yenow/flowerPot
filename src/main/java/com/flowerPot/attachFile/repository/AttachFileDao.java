package com.flowerPot.attachFile.repository;

import com.flowerPot.vo.AttachFileVo;

public interface AttachFileDao {

	public void insertAttachFile(AttachFileVo attachFile);

	public void deleteAll();

	public int selectCount();
}
