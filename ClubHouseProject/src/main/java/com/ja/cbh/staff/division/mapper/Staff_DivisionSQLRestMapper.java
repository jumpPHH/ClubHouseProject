package com.ja.cbh.staff.division.mapper;

import java.util.ArrayList;
import java.util.HashMap;

public interface Staff_DivisionSQLRestMapper {

//공지구분	
	//공지구분 등록
	public void insertNotiDiv(HashMap<String, Object> pram);
	//공지 사용여부 수정(사용, 미사용)
	public void updateNotiDivNameByNotiDivNo(HashMap<String, Object> pram);
	//공지 사용여부 수정(삭제)
	public void updateNotiDivStateByNotiDivNo(HashMap<String, Object> pram);
	//공지구분리스트 호출
	public ArrayList<HashMap<String, Object>> selectNotiDivList();
	//공지구분리스트 개수 호출
	public int selectCountNotiDiv();

	
//봉사구분	
	//봉사구분 등록
	public void insertVlntrDiv(HashMap<String, Object> pram);
	//봉사구분 사용여부 수정(사용, 미사용)
	public void updateVlntrDivNameByVlntrDivNo(HashMap<String, Object> pram);
	//봉사구분 사용여부 수정(삭제)
	public void updateVlntrDivStateByVlntrDivNo(HashMap<String, Object> pram);
	//봉사구분리스트 호출
	public ArrayList<HashMap<String, Object>> selectVlntrDivList();
	//봉사구분리스트 개수 호출
	public int selectCountVlntrDiv();

	
//직책구분	
	//직책구분 등록
	public void insertPstnDiv(HashMap<String, Object> pram);
	//직책구분 사용여부 수정(사용, 미사용)
	public void updatePstnDivNameByPstnDivNo(HashMap<String, Object> pram);
	//직책구분 사용여부 수정(삭제)
	public void updatePstnDivStateByPstnDivNo(HashMap<String, Object> pram);
	//직책구분리스트 호출
	public ArrayList<HashMap<String, Object>> selectPstnDivList();
	//직책구분리스트 개수 호출
	public int selectCountPstnDiv();
	

//결재구분	
	//결재구분 등록
	public void insertApvDiv(HashMap<String, Object> pram);
	//결재구분 사용여부 수정(사용, 미사용)
	public void updateApvDivNameByApvDivNo(HashMap<String, Object> pram);
	//결재구분 사용여부 수정(삭제)
	public void updateApvDivStateByApvDivNo(HashMap<String, Object> pram);
	//결재구분리스트 호출
	public ArrayList<HashMap<String, Object>> selectApvDivList();
	//결재구분리스트 개수 호출
	public int selectCountApvDiv();
	
	//알람구분 등록
	public void insertAlarmDiv(HashMap<String, Object> pram);
	//알람구분 사용여부 수정(사용, 미사용)
	public void updateAlarmDivNameByAlarmDivNo(HashMap<String, Object> pram);
	//알람구분 사용여부 수정(삭제)
	public void updateAlarmDivStateByAlarmDivNo(HashMap<String, Object> pram);
	//알람구분리스트 호출
	public ArrayList<HashMap<String, Object>> selectAlarmDivList();
	//알람구분리스트 개수 호출
	public int selectCountAlarmDiv();

	
//동아리구분	
	//동아리구분 등록
	public void insertClubDivision(HashMap<String, Object> pram);
	//동아리구분 사용여부 수정(사용, 미사용)
	public void updateClubDivisionNameByClubDivisionNo(HashMap<String, Object> pram);
	//동아리구분 사용여부 수정(삭제)
	public void updateClubDivisionStateByClubDivisionNo(HashMap<String, Object> pram);
	//동아리구분리스트 호출
	public ArrayList<HashMap<String, Object>> selectClubDivisionList();
	//동아리구분리스트 개수 호출
	public int selectCountClubDivision();

	
//동아리카테고리구분	
	//동아리카테고리구분 등록
	public void insertClubDeptCategory(HashMap<String, Object> pram);
	//동아리카테고리구분 사용여부 수정(사용, 미사용)
	public void updateClubDeptCategoryNameByClubDeptCategoryNo(HashMap<String, Object> pram);
	//동아리카테고리구분 사용여부 수정(삭제)
	public void updateClubDeptCategoryStateByClubDeptCategoryNo(HashMap<String, Object> pram);
	//동아리카테리고리구분 호출
	public ArrayList<HashMap<String, Object>> selectClubDeptCategoryList();
	//동아리카테고리구분 개수 호출
	public int selectCountDeptCategory();
}
