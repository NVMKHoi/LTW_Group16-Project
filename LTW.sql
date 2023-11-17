Create database LTW
go
use LTW
go

create table users(
	u_id char(5) not null,
	full_name varchar(32),
	u_address varchar(60),
	phone_number float,
	email varchar(60),
	usernames varchar(16),
	pwd varchar(32),
	constraint PK_uesers primary key (u_id, phone_number),
)
create table loged(
	usernames varchar(16),
	pwd varchar(32),
)
create table phones(
	phone_id char(5) primary key,
	brands_name varchar(10),
	model varchar(30),
)
create table ip_issues(
	issue_id char(10) primary key,
	issue_names varchar(20),
	price  float,
)
create table ss_issues(
	issue_id char(10) primary key,
	issue_names varchar(20),
	price  float,
)
create table xm_issues(
	issue_id char(10) primary key,
	issue_names varchar(20),
	price  float,
)
create table op_issues(
	issue_id char(10) primary key,
	issue_names varchar(20),
	price  float,
)
create table rm_issues(
	issue_id char(10) primary key,
	issue_names varchar(20),
	price  float,
)
create table booking(
	u_id char(5),
	phone_number float,

)
alter table booking(
	add constraint FK_u_id FOREIGN KEY (u_id) REFERENCES users(u_id);
	add constraint FK_phone_number FOREIGN KEY (phone_number) REFERENCES users(phone_number);
)