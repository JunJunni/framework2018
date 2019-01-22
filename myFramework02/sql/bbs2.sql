create table bbs2(
	idx integer primary key auto_increment,
	sub varchar(20),
	content text,
	ddate timestamp,
	cnt int 
);

insert into bbs2 (sub,content,ddate,cnt) values ('test1','test',now(),0);
insert into bbs2 (sub,content,ddate,cnt) values ('test2','test',now(),0);
insert into bbs2 (sub,content,ddate,cnt) values ('test3','test',now(),0);
insert into bbs2 (sub,content,ddate,cnt) values ('test4','test',now(),0);
insert into bbs2 (sub,content,ddate,cnt) values ('test5','test',now(),0);
insert into bbs2 (sub,content,ddate,cnt) values ('test6','test',now(),0);
