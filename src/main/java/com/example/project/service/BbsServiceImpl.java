package com.example.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.project.dao.BbsDAO;
import com.example.project.vo.BbsVO;
import com.example.project.vo.CategoryVO;

@Service
public class BbsServiceImpl implements BbsService {
	@Autowired
	private BbsDAO bbsDao;
	
	public void insertBbs(BbsVO b) {
	  this.bbsDao.insertBbs(b);			
	}
	@Override
	public int getTotalCount(BbsVO b) {
		return this.bbsDao.getTotalCount(b);
	}
	@Override
	public List<BbsVO> bbs_list(BbsVO b){
		return this.bbsDao.bbs_list(b);
	}
	@Override
	public List<BbsVO> notice_bbs_list(BbsVO b){
		return this.bbsDao.notice_bbs_list(b);
	}
	@Override
	public List<BbsVO> free_bbs_list(BbsVO b){
		return this.bbsDao.free_bbs_list(b);
	}
	@Override
	public List<BbsVO> qna_bbs_list(BbsVO b){
		return this.bbsDao.qna_bbs_list(b);
	}
	@Override
	public List<BbsVO> advice_bbs_list(BbsVO b){
		return this.bbsDao.advice_bbs_list(b);
	}
	@Override
	public List<CategoryVO> category(CategoryVO c) throws Exception{
		return this.bbsDao.category(c);
	}
	//AOP를 통한 트랜잭션 적용
		@Transactional
		@Override
		public BbsVO getBbsCont(int bbs_no) {//내용보기+조회수증가
			this.bbsDao.updateHit(bbs_no);//조회수 증가
			return this.bbsDao.getBbsCont(bbs_no);
		}
		@Override
		public BbsVO getBbsCont2(int bbs_no) {
			return this.bbsDao.getBbsCont(bbs_no);
		}//답변폼+수정폼+삭제폼

		//AOP를 통한 트랜잭션 적용
		@Transactional
		@Override
		public void replyBbs(BbsVO rb) {	       
	        this.bbsDao.replyBbs(rb);//답변 저장
		}//답변레벨 증가+답변 저장 => 2개 쿼리문 모두 성공하면 commit(성공 반영), 하나라도 실패하면 rollback(취소 처리)

		@Override
		public void editBbs(BbsVO b) {
			this.bbsDao.editBbs(b);		
		}

		@Override
		public void delBbs(int bbs_no) {
			this.bbsDao.delBbs(bbs_no);
		}
		


}
