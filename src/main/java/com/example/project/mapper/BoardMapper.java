package com.example.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.project.vo.BbsVO;
import com.example.project.vo.CategoryVO;

@Mapper
public interface BoardMapper {
	
	void insertBbs(BbsVO b);
	int getTotalCount(BbsVO b);
	public List<BbsVO> bbs_list(BbsVO b);
	public List<BbsVO> notice_bbs_list(BbsVO b);
	public List<BbsVO> free_bbs_list(BbsVO b);
	public List<BbsVO> qna_bbs_list(BbsVO b);
	public List<BbsVO> advice_bbs_list(BbsVO b);
	public List<CategoryVO> category(CategoryVO c) throws Exception;
	void updateHit(int bbs_hit);
	public BbsVO getBbsCont(int bbs_no);
	public BbsVO getBbsCont2(int bbs_no);
	void replyBbs(BbsVO rb);
	void editBbs(BbsVO b);
	void delBbs(int bbs_no);
	void insertCate(CategoryVO c);
	
	
}


