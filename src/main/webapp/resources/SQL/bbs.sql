-- bbs 자료실 테이블
create table bbs1(
 bbs_no number(38) primary key --번호
 ,bbs_name varchar2(50) not null --글쓴이
 ,bbs_title varchar2(200) not null --글제목
 ,bbs_pwd varchar2(50) not null --비번
 ,bbs_cont varchar2(4000) not null --글내용
 ,bbs_hit number(38) default 0 --조회수
 ,bbs_date date --글 등록날짜
 ,bbs_updateDate date -- 글 수정날짜
 ,filename varchar(200) not null
 ,fileOriName varchar(300) not null
 ,fileurl varchar(300) not null
 ,bbs_cateno varchar2(30) REFERENCES board_category (cateno)
);
ALTER TABLE bbs1 ADD(bbs_updateDate date);

select * from bbs order by bbs_no desc;

--bbs_no_seq 시퀀스 생성 -> 시퀀스는 번호 발생기
create sequence bbs_no_seq
start with 1 --1부터 시작
increment by 1 --1씩 증가
nocache; --임시 저장 장소를 사용 안함.

--bbs_no_seq 시퀀스 다음 번호값 확인
select bbs_no_seq.nextval from dual;

INSERT INTO bbs(bbs_title,bbs_cont,bbs_name,bbs_pwd,bbs_no) VALUES('테스트','많은 이용 바랍니다.','박윤찬2','0000','4');
INSERT INTO bbs(bbs_title,bbs_cont,bbs_name,bbs_pwd,bbs_no) VALUES('테스트1','많은 이용 바랍니다.1','박윤찬1','0001','2');
INSERT INTO bbs(bbs_title,bbs_cont,bbs_name,bbs_pwd,bbs_no) VALUES('테스트3','많은 이용 바랍니다.3','박윤찬3','0001','5');
INSERT INTO bbs(bbs_no,bbs_name,bbs_title,bbs_pwd,bbs_cont,bbs_step,bbs_date) VALUES('6','박윤찬6','테스트6','123','안녕하세요','0',sysdate);


INSERT INTO bbs(bbs_no,bbs_name,bbs_title,bbs_pwd,bbs_cont,bbs_date) VALUES('7','박윤찬7','테스트7','123','안녕하세요',sysdate);


create table files(
fno number(38) primary key
,bno number(38) not null
,filename varchar(200) not null
,fileOriName varchar(300) not null
,fileurl varchar(300) not null
);

create table board_category(
catename varchar2(40) not null,
cateno varchar2(30) not null,
catenoRef varchar2(30) null,
primary key(cateno),
foreign key(catenoRef) references board_category(cateno)
);

insert into board_category (catename,cateno) values('공지사항','100');
insert into board_category (catename,cateno) values('자유게시판','200');
insert into board_category (catename,cateno) values('Q&A게시판','300');
insert into board_category (catename,cateno) values('취업상담정보게시판','400');
insert into board_category (catename,cateno) values('문제풀이게시판','500');

alter table board_category add level number(38);
select level, catename, cateno, catenoRef from board_category
    start with catenoRef is null connect by prior cateno = catenoRef;
    
alter table bbs1 modify fileOriName null;
--댓글 테이블 생성
create table comments(
  rno number(38) primary key --댓글 번호
  , bno number(38) default 0 --게시판 번호값만 저장되게 추가적인 외래키 설정
  , replyer varchar2(50) not null --댓글 작성자
  , replytext varchar2(4000) not null --댓글 내용
  , regdate date --댓글 등록날짜
);

select * from comments order by rno desc;

--댓글 시퀀스 생성
create sequence comments_seq
start with 1 --1부터 시작
increment by 1 --1씩 증가
nocache;

select comments_seq.nextval from dual;

--외래키 추가 설정
alter table comments add constraint comments_bno_fk foreign key(bno) references bbs1(bbs_no);