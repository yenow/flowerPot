package com.flowerPot.vo;

import java.time.LocalDateTime;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
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
	private LocalDateTime regdate;
	private List<AuthorityVo> authList;
	
	
	
	public MemberVo(int mno, String id, String password, String name, String nickname, String address, String email,
			String gender, String birth, String member_rank, boolean enabled) {
		super();
		this.mno = mno;
		this.id = id;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.address = address;
		this.email = email;
		this.gender = gender;
		this.birth = birth;
		this.member_rank = member_rank;
		this.enabled = enabled;
	}
	
	
}

