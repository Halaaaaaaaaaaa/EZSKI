
create table skiuser (

	id    varchar(20) not null primary key,
	pwd   varchar(20) not null,
	name  varchar(20) not null,
	sex    varchar(3) ,         
	birth   varchar(20) not null,
	tel     varchar(20) not null,
	city    varchar(10) ,     
	email  varchar(20) not null,    
	utype  char(1) default '1' ,  	        -- '1' : 일반(활동)    '0' : 직원(운영자) 
				        -- default값을 1로 두어 회원가입회원은 모두 일반회원으로 설정 , 관리페이지에서 회원 utype 변경하여 운영자로 정정
	edate  date not null                  -- 가입일
);


insert into skiuser (id, pwd, name, sex, birth, tel, city, email, utype, edate) values ('admin','1234', '관리자', '여', '19941111', '01066666666', '서울', 'admin@domain.com', 0, sysdate);


create table SkiReview (
	NUMB number primary key ,
	TITLE varchar2(200) ,
	WRITER varchar2(20) not null,
	WDATE DATE not null,
	DETAILS varchar2(500) not null,
	REF number,
	REF_STEP number,
	REF_LEVEL number
);


create table SkiNotice (
	NUMB number primary key ,
	CAT varchar2(15) not null,
	TITLE varchar2(50) not null,
	DETAILS varchar2(500) not null,
    WDATE DATE ,
    VIEWS NUMBER
);


create table skibooking (
    id varchar2(30) not null,
    bdate  varchar2(40),
    bcheck varchar2(3) not null,
    rdate   varchar2(30) not null ,
    primary key(id, bdate)
);


--후기글 시퀀스 작성
create sequence SkiReview_seq
	increment by 1
    start with 1
	minvalue 1
	maxvalue 1000
	nocycle
	nocache
    noorder;

--공지글 시퀀스 작성
create sequence numb_seq
	increment by 1
    start with 1
	minvalue 1
	maxvalue 1000
	nocycle
	nocache
    noorder;



commit; 