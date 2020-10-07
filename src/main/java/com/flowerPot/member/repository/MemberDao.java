package com.flowerPot.member.repository;

import java.util.List;
import java.util.Map;

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

	public MemberVo selectOneDeliMemById(String id);

	public List<Integer> selectMnoList();

	public void updateBrandById(Map<String, Object> map);

}
