
create table skiuser (

	id    varchar(20) not null primary key,
	pwd   varchar(20) not null,
	name  varchar(20) not null,
	sex    varchar(3) ,         
	birth   varchar(20) not null,
	tel     varchar(20) not null,
	city    varchar(10) ,     
	email  varchar(20) not null,    
	utype  char(1) default '1' ,  	        -- '1' : �Ϲ�(Ȱ��)    '0' : ����(���) 
				        -- default���� 1�� �ξ� ȸ������ȸ���� ��� �Ϲ�ȸ������ ���� , �������������� ȸ�� utype �����Ͽ� ��ڷ� ����
	edate  date not null                  -- ������
);


insert into skiuser (id, pwd, name, sex, birth, tel, city, email, utype, edate) values ('admin','1234', '������', '��', '19941111', '01066666666', '����', 'admin@domain.com', 0, sysdate);


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


--�ı�� ������ �ۼ�
create sequence SkiReview_seq
	increment by 1
    start with 1
	minvalue 1
	maxvalue 1000
	nocycle
	nocache
    noorder;

--������ ������ �ۼ�
create sequence numb_seq
	increment by 1
    start with 1
	minvalue 1
	maxvalue 1000
	nocycle
	nocache
    noorder;



commit; 