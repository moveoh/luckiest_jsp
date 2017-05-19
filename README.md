# luckiest_jsp

2016 SMART 학부프로젝트 - LUCKIEST  
MVC모델을활용한JSP&Servlet Web Application  


```
데이터 베이스
CREATE DATABASE luckiest_test CHARACTER SET utf8 COLLATE utf8_general_ci;

회원 테이블
  
create table member(
id int(11) not null auto_increment primary key,
member_email varchar(40) not null,
member_pw varchar(30) not null,
member_nic varchar(20) not null,
member_join_date TIMESTAMP DEFAULT NOW(),
member_salty varchar(10) not null,
member_sweet varchar(10) not null,
member_spicy varchar(10) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

블로그 테이블
create table blog(
blog_id int(11) not null auto_increment primary key,
id varchar(40) not null,
blog_title varchar(100) not null,
blog_date TIMESTAMP DEFAULT NOW(),
blog_summary varchar(255),
blog_contents LONGTEXT,
blog_count int(11) DEFAULT 1
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

리뷰 테이블
create table review(
review_id int(11) not null auto_increment primary key,
member_nic varchar(20) not null,
menu_id int(11) not null,
coment_date TIMESTAMP DEFAULT NOW(),
coment_content varchar(255) not null,
star_score double not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

가게 테이블
create table restaurant(
restaurant_id int(11) not null auto_increment primary key,
restaurant_name varchar(20) not null,
restaurant_adress varchar(100) not null,
restaurant_category1 int(10) not null,
restaurant_category2 int(20) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

메뉴 테이블
create table menu(
menu_id int(11) not null auto_increment primary key,
restaurant_id int(11) not null,
menu_name varchar(20) not null,
menu_price int(10) not null,
menu_ave_star int(5) not null,
menu_summary text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```
