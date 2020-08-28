package com.flowerPot.vo;

import java.util.List;

import lombok.Data;

@Data
public class MemberVo {
	private int mno;
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String address;
	private String email;
	private String gender;
	private String birth;
	private String member_rank;
	private boolean enabled;
	private List<AuthorityVo> authList;
}

