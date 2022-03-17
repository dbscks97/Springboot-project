package com.example.project.service;


import java.util.List;

import com.example.project.vo.BbsVO;
import com.example.project.vo.CategoryVO;

public interface BbsService {
	
	public void insertBbs(BbsVO b);
	int getTotalCount(BbsVO b);
	public List<BbsVO> bbs_list(BbsVO b);
	public List<BbsVO> notice_bbs_list(BbsVO b);
	public List<BbsVO> free_bbs_list(BbsVO b);
	public List<BbsVO> qna_bbs_list(BbsVO b);
	public List<BbsVO> advice_bbs_list(BbsVO b);
	public List<CategoryVO> category(CategoryVO c) throws Exception;
	public BbsVO getBbsCont(int bbs_no);
	public BbsVO getBbsCont2(int bbs_no);
	void replyBbs(BbsVO rb);
	void editBbs(BbsVO b);
	void delBbs(int bbs_no);
	
}
