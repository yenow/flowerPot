package com.flowerPot.memberAddress.repository;

import com.flowerPot.vo.MemberAddressVo;

public interface MemberAddressDao {

	MemberAddressVo selectOneMemberAddressByMno(Integer mno);

}
