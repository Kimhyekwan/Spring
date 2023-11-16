--ezenBoard--
create table ezenBoard(
	idx int not null,
	memberID varchar(20) not null,
	title varchar(20) not null,
	content varchar(100) not null,
	writer varchar(20) not null,
	indate datetime default now(),
	count int default 0,
	boGroup int,
	boSequence int,
	boLevel int,
	boUsable int,
	primary key(idx)
);

create table ezenMember(
	memberID varchar(50) not null,
	memberPwd varchar(50) not null,
	memberName varchar(50) not null,
	memberPhone varchar(50) not null,
	memberAddr varchar(100),
	latitude decimal(13,10),
	longitude decimal(13,10),
	primary key(memberID)
);

insert into ezenMember(memberID, memberPwd, memberName, memberPhone)
values('ezen04','ezen04','이창표','010-1111-2222');

insert into ezenMember(memberID, memberPwd, memberName, memberPhone)
values('ezen05','ezen05','허창범','010-2222-3333');

insert into ezenMember(memberID, memberPwd, memberName, memberPhone)
values('ezen06','ezen06','김영재','010-3333-4444');

insert into ezenMember(memberID, memberPwd, memberName, memberPhone)
values('cnlal','1234','김혜관','010-3333-4444');

select *from ezenMember;

select max(idx) from ezenBoard;


select IFNULL(max(idx)+1,1) from ezenBoard; --널이면 1로 널이 아니면 +1로
select IFNULL(max(boGroup)+1,0) from ezenBoard;

insert into ezenBoard
select IFNULL(max(idx)+1,1), 'ezen01', '스프링1','스프링1','이창표',
now(),0, IFNULL(max(boGroup)+1,0), 0,0,1 
from ezenBoard;

insert into ezenBoard
select IFNULL(max(idx)+1,1), 'ezen02', '스프링2','스프링2','허창범',
now(),0, IFNULL(max(boGroup)+1,0), 0,0,1 
from ezenBoard;

insert into ezenBoard
select IFNULL(max(idx)+1,1), 'ezen03', '스프링3','스프링3','김영재',
now(),0, IFNULL(max(boGroup)+1,0), 0,0,1 
from ezenBoard;


delete from ezenBoard where idx=1;
delete from ezenBoard where idx=2;
delete from ezenBoard where idx=3;

commit;

select *from HK;

delete from ezenBoard;


delete from ezenBoard where idx=12;




CREATE TABLE HBoard (
  idx INT AUTO_INCREMENT PRIMARY KEY,
  hname VARCHAR(20) NOT NULL
);

INSERT INTO HBoard (hname) VALUES ('김혜관');
INSERT INTO HBoard (hname) VALUES ('이창표');

drop table HBoard;


