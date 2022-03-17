package com.example.project.vo;

public class BbsVO {
		
	private int bbs_no; //번호
	private String bbs_name; //글쓴이
	private String bbs_title; //글제목
	private String bbs_pwd; //비번
	private String bbs_cont; //내용
	private int bbs_hit; //조회수
	private int bbs_ref; //관리자 답글에서 원본글과 답변글을 묶어주는 그룹번호 역할
	private int bbs_step; //원본글이면 0, 첫번째 답변글이면 1, 두번째 답변글이면 2, 즉 원본글과 답변글을 구분하는 번호값이면서 몇번째 답변글인가를 알려준다.
	private int bbs_level; //답변글 정렬순서
	private String bbs_date; //등록 날짜
	private String bbs_updateDate; //수정 날짜
	
	
	//페이징(쪽나누기)
    private int startrow;//시작행 번호
    private int endrow;//끝행 번호
	//검색기능->검색 필드와 검색어
    private String find_field;//검색 필드
    private String find_name;//검색어 
    //파일
    private String fileName;     //저장할 파일
	private String fileOriName;  //실제 파일
    private String fileUrl;
    private String bbs_cateno;
    public String getBbs_cateno() {
		return bbs_cateno;
	}
	public void setBbs_cateno(String bbs_cateno) {
		this.bbs_cateno = bbs_cateno;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileOriName() {
		return fileOriName;
	}
	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	
	public int getBbs_no() {
		return bbs_no;
	}
	public String getBbs_name() {
		return bbs_name;
	}
	public void setBbs_name(String bbs_name) {
		this.bbs_name = bbs_name;
	}
	public String getBbs_title() {
		return bbs_title;
	}
	public void setBbs_title(String bbs_title) {
		this.bbs_title = bbs_title;
	}
	public String getBbs_pwd() {
		return bbs_pwd;
	}
	public void setBbs_pwd(String bbs_pwd) {
		this.bbs_pwd = bbs_pwd;
	}
	public String getBbs_cont() {
		return bbs_cont;
	}
	public void setBbs_cont(String bbs_cont) {
		this.bbs_cont = bbs_cont;
	}

	public int getBbs_hit() {
		return bbs_hit;
	}
	public void setBbs_hit(int bbs_hit) {
		this.bbs_hit = bbs_hit;
	}
	public int getBbs_ref() {
		return bbs_ref;
	}
	public void setBbs_ref(int bbs_ref) {
		this.bbs_ref = bbs_ref;
	}
	public int getBbs_step() {
		return bbs_step;
	}
	public void setBbs_step(int bbs_step) {
		this.bbs_step = bbs_step;
	}
	public int getBbs_level() {
		return bbs_level;
	}
	public void setBbs_level(int bbs_level) {
		this.bbs_level = bbs_level;
	}
	public String getBbs_date() {
		return bbs_date;
	}

	public void setBbs_date(String bbs_date) {
		this.bbs_date = bbs_date.substring(0,16);
	}
	public String getBbs_updateDate() {
		return bbs_updateDate;
	}
	public void setBbs_updateDate(String bbs_updateDate) {
		this.bbs_updateDate = bbs_updateDate.substring(0,16);
	}
	public void setBbs_no(int bbs_no) {
		this.bbs_no = bbs_no;
	}
    
    public int getStartrow() {
		return startrow;
	}
	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}
	public int getEndrow() {
		return endrow;
	}
	public void setEndrow(int endrow) {
		this.endrow = endrow;
	}
	public String getFind_field() {
		return find_field;
	}
	public void setFind_field(String find_field) {
		this.find_field = find_field;
	}
	public String getFind_name() {
		return find_name;
	}
	public void setFind_name(String find_name) {
		this.find_name = find_name;
	} 
}
