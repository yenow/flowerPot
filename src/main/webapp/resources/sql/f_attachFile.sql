create table f_attachFile (
	atno number(30),
	cno number(30) default 0,
	mgno number(30) default 0,
	uuidName varchar2(200) not null,
	originalFileName varchar2(200) not null,
	uploadFolderPath varchar2(200) not null,
	mappingURL varchar2(200) not null,
	realName varchar2(200) not null,
	primary key (atno),
	constraint f_attachFile_fk_cno foreign key (cno) references f_cosmetic(cno)
);
create sequence atno_seq start with 1 increment by 1;

drop table f_attachFile;
select * from f_attachFile;