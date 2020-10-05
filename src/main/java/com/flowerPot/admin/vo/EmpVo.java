package com.flowerPot.admin.vo;

import java.util.List;

import lombok.Data;

@Data
public class EmpVo {
	
	private Integer empNo;
	private String empName;
	private String empId;
	private Boolean empEnabled;
	private Integer deptNo;
	private Integer poNo;
	
	private List<DeptVo> deptList;
	private List<PoVo> poList;
	
	@Override
	public String toString() {
		return "EmpVo [empNo=" + empNo + ", empName=" + empName + ", empId=" + empId + ", empEnable=" + empEnabled
				+ ", deptNo=" + deptNo + ", poNo=" + poNo + ", deptList=" + deptList + ", poList=" + poList + "]";
	}

	

	
	
}
