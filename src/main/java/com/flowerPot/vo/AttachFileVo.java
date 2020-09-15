package com.flowerPot.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AttachFileVo {
	private int atno;
	private int cno;
	private String uuidName;
	private String originalFileName;
	private String uploadFolderPath;
	private String mappingURL;
	private String realName;
	
}
