package com.flowerPot.admin.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class EmpVo {
	
	private Integer empNo;
	private String empName;
	private String empId;
	private String deptNo;
	private String poNo;
	
	private List<DeptVo> deptList;
	private List<PoVo> poList;
}
