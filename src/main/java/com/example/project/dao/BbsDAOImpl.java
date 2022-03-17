package com.example.project.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.mapper.BoardMapper;
import com.example.project.vo.BbsVO;
import com.example.project.vo.CategoryVO;

@Repository
public class BbsDAOImpl implements BbsDAO{
	
	
	@Autowired
	private BoardMapper boardMapper;
	
    @Override
    public List<BbsVO> bbs_list(BbsVO b){
    	return boardMapper.bbs_list(b);
    }
	@Override
	public List<BbsVO> notice_bbs_list(BbsVO b){
		return boardMapper.notice_bbs_list(b);
	}
	@Override
	public List<BbsVO> free_bbs_list(BbsVO b){
		return boardMapper.free_bbs_list(b);
	}
	@Override
	public List<BbsVO> qna_bbs_list(BbsVO b){
		return boardMapper.qna_bbs_list(b);
	}
	@Override
	public List<BbsVO> advice_bbs_list(BbsVO b){
		return boardMapper.advice_bbs_list(b);
	}
	@Override
	public List<CategoryVO> category(CategoryVO c) throws Exception{
		return boardMapper.category(c);
	}
	@Override
	public void insertBbs(BbsVO b) {
		boardMapper.insertBbs(b);//mybatis에서 insert()메서드는 레코드 저장. bbs_in은 bbs.xml 매퍼 태그에서 설정할 유일한 아이디명		
	}//자료실 저장
	
	@Override
	public int getTotalCount(BbsVO b) {
		return boardMapper.getTotalCount(b);//mybatis에서 selectOne() 메서드는 단 한개의 레코드만을 반환
	}//검색 전 레코드 개수(총 레코드 개수)+검색 후 레코드 개수
	@Override
	public void updateHit(int bbs_no) {
		boardMapper.updateHit(bbs_no); //mybatis에서 update()메서드는 레코드를 수정. 		
	}//조회수 증가

	@Override
	public BbsVO getBbsCont(int bbs_no) {
		return boardMapper.getBbsCont(bbs_no);
	}//내용보기
	@Override
	public void replyBbs(BbsVO rb) {
		boardMapper.replyBbs(rb);		
	}//답변 저장

	@Override
	public void editBbs(BbsVO b) {
		boardMapper.editBbs(b);		
	}//자료실 수정

	@Override
	public void delBbs(int bbs_no) {
		boardMapper.delBbs(bbs_no);		
	}//자료실 삭제
	
	
}

