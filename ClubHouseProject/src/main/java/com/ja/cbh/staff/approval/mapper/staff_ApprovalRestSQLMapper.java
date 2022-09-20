package com.ja.cbh.staff.approval.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

public interface staff_ApprovalRestSQLMapper {

	public ArrayList<HashMap<String, Object>> selectApvBystaffId(HashMap<String, Object> param);
	
	public ArrayList<HashMap<String, Object>> selectApvByStaffMidIdAndStaffFnlId(HashMap<String, Object> param);

	public HashMap<String, Object> selectApvByApvNo(String APV_NO);
	
}
