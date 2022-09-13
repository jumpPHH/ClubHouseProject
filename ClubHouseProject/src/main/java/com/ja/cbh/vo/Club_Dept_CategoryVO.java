package com.ja.cbh.vo;

public class Club_Dept_CategoryVO {

	private int club_category_no;
	private String club_category_name;
	private String club_category_description;
	private String club_dept_image_link;
	
	public Club_Dept_CategoryVO() {
		super();
	}
	public Club_Dept_CategoryVO(int club_category_no, String club_category_name, String club_category_description,
			String club_dept_image_link) {
		super();
		this.club_category_no = club_category_no;
		this.club_category_name = club_category_name;
		this.club_category_description = club_category_description;
		this.club_dept_image_link = club_dept_image_link;
	}
	public int getClub_category_no() {
		return club_category_no;
	}
	public void setClub_category_no(int club_category_no) {
		this.club_category_no = club_category_no;
	}
	public String getClub_category_name() {
		return club_category_name;
	}
	public void setClub_category_name(String club_category_name) {
		this.club_category_name = club_category_name;
	}
	public String getClub_category_description() {
		return club_category_description;
	}
	public void setClub_category_description(String club_category_description) {
		this.club_category_description = club_category_description;
	}
	public String getClub_dept_image_link() {
		return club_dept_image_link;
	}
	public void setClub_dept_image_link(String club_dept_image_link) {
		this.club_dept_image_link = club_dept_image_link;
	}
	
	
}
