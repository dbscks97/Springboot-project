package com.example.project.dao;


import java.util.List;

import com.example.project.vo.BbsVO;
import com.example.project.vo.CategoryVO;

public interface BbsDAO {
	public List<BbsVO> bbs_list(BbsVO b);
	public List<BbsVO> notice_bbs_list(BbsVO b);
	public List<BbsVO> free_bbs_list(BbsVO b);
	public List<BbsVO> qna_bbs_list(BbsVO b);
	public List<BbsVO> advice_bbs_list(BbsVO b);
	public void updateHit(int bbs_no);
	public BbsVO getBbsCont(int bbs_no);
	public List<CategoryVO> category(CategoryVO c) throws Exception;
	void insertBbs(BbsVO b);
	int getTotalCount(BbsVO b);
	void replyBbs(BbsVO rb);
	void editBbs(BbsVO b);
	void delBbs(int bbs_no);
	
}
