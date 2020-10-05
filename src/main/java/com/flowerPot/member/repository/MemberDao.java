package com.flowerPot.member.repository;

import java.util.List;

import com.flowerPot.member.vo.MemberDTO;
import com.flowerPot.vo.MemberVo;

public interface MemberDao {

	public MemberVo read(String id);

	public void insertMember(MemberVo member);

	public int selectTotalCount();

	public void deleteMemberById(String string);

	public MemberVo selectOneMemberById(String id);

	public Integer checkId(String member);
	
	public Integer checkEmail(String member);
	
	public Integer checkPhone(String member);

	public void authentication(MemberDTO dto);
}
