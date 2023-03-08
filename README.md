
CREATE TABLE mydb.member(
    id VARCHAR(255) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
	auth INT NOT NULL,
    PRIMARY KEY (id)
);


create table bbs(
	seq int auto_increment primary key,
	id varchar(50) not null,
	
	ref decimal(8) not null,
	step decimal(8) not null,
	depth decimal(8) not null,
	
	title varchar(200) not null,
	content varchar(4000) not null,
	wdate timestamp not null,
	
	del decimal(1) not null,
	readcount decimal(8) not null
);

create table calendar(
	seq int auto_increment primary key, 
	id varchar(50) not null,
	title varchar(200) not null,
	content varchar(4000),
	rdate varchar(12) not null,		
	wdate timestamp not null
);

create table pds(
	seq int auto_increment primary key,
	id varchar(50) not null,
	title varchar(200) not null,
	content varchar(4000) not null,
	filename varchar(50) not null,
	newfilename varchar(50) not null,
	readcount decimal(8) not null,
	downcount decimal(8) not null,
	regidate timestamp not null
);

alter table pds
add foreign key(id) references member(id);


CREATE TABLE bizmember(
    company VARCHAR(255) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    contact VARCHAR(255) NOT NULL,
	auth INT NOT NULL,
    PRIMARY KEY (company)
