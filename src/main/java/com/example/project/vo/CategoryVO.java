package com.example.project.vo;

public class CategoryVO {
	
	private String catename;
	private String cateno;
	private String catenoRef;
	private int level;
	public String getCatenoRef() {
		return catenoRef;
	}
	public void setCatenoRef(String catenoRef) {
		this.catenoRef = catenoRef;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getCatename() {
		return catename;
	}
	public void setCatename(String catename) {
		this.catename = catename;
	}
	public String getCateno() {
		return cateno;
	}
	public void setCateno(String cateno) {
		this.cateno = cateno;
	}
}
