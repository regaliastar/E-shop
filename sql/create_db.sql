drop database if exists mmldb;
create database mmldb;
use mmldb;

-- use myproject;
create table `Product` (
	Pid INT auto_increment primary key,  -- 商品id
	Pname VARCHAR(50),  -- 商品名称
	stock int,  -- 库存数量
	image varchar(255),  -- 图片路径
	price float,  -- 成本价格
	salePrice float,   -- 销售价格
	description VARCHAR(512),   -- 商品描述
	addedDate  date  -- 上架日期
) ;

create table `User` (
	Uid INT auto_increment primary key,  -- 用户id
	Uname VARCHAR(50),  -- 用户名
	pw VARCHAR(20),  -- 密码
	realName varchar(20),  -- 真实姓名
	tel varchar(11),  -- 手机号码
	address text,   -- 默认地址
	zip  varchar(6),   -- 邮编
	email  varchar(50),  -- 邮箱
 	avatar varchar(255) -- 头像路径
 ) ;

create table `Order` (
	Oid INT auto_increment primary key,  -- 订单id
	Uid int,  -- 用户id
 	Pid INT,  -- 商品id
	sendName varchar(20),  -- 收货人姓名
	sendAddress  text,  -- 收获地址
	sendTel varchar(11),   -- 收获人电话
	payment  varchar(10),   -- 付款方式（货到付款/支付宝/微信）
	memo  varchar(50),  -- 备注
 	time date, -- 订单生成时间
 	tag  int, -- 订单处理标记 0/1
 	foreign key(Uid) references User(Uid),
 	foreign key(Pid) references Product(Pid)
 ) ;

create table `Cart` (
	Cid INT auto_increment primary key,  -- 购物车id
	Uid INT,  -- 用户id
 	Pid INT,  -- 商品id
	num int,   -- 购买数量
	foreign key(Uid) references User(Uid),
	foreign key(Pid) references Product(Pid)
) ;

create table `Index_st` (
 	I_stid INT primary key, -- 一级索引ID
 	I_stname VARCHAR(50)
) ;

create table `Index_nd` (
 	I_ndid INT primary key, -- 二级索引ID
	I_ndname VARCHAR(50),
 	I_stid int,  -- 一级索引ID
 	foreign key(I_stid) references Index_st(I_stid)
) ;

create table `PType` (
	PTid INT auto_increment primary key,
 	Pid INT, 
	I_stid INT,--
 	I_ndid INT,
 	foreign key (Pid) references Product(Pid),
 	foreign key (I_stid) references Index_st(I_stid),
 	foreign key (I_ndid) references Index_nd(I_ndid)
) ;

create table `Address` (
 	Aid INT auto_increment primary key, -- 
 	Uid INT,-- 一
 	addr text,
 	foreign key (Uid) references User(Uid)
) ;

create table `News` (
 	Nid INT auto_increment primary key, -- 
 	title VARCHAR(100),-- 一
 	image VARCHAR(255),
 	content text,
 	start_date date,
 	end_date date
) ;

create table `Admin` (
 	Aid INT auto_increment primary key, -- 
 	Aname VARCHAR(50),-- 一
 	pw VARCHAR(20)
) ;

create table `Product_img` (
   Pid int primary key,
   img_1 VARCHAR(255),
   img_2 VARCHAR(255),
   img_3 VARCHAR(255),
   img_4 VARCHAR(255),
   img_5 VARCHAR(255),
) ;
