/**
 * Product
 */
insert into Product(Pname,stock,image,price,salePrice,description,addedDate)
	values('雪碧',1000,'image/xuebi.jpg',2.0,3.5,'雪碧的描述balabalabala','2010-1-8');

insert into Product(Pname,stock,image,price,salePrice,description,addedDate)
	values('可乐',1000,'image/kele.jpg',2.0,3.5,'可乐的描述balabalabala','2010-1-8');

/**
 * User
 */
insert into User(Uname,pw)
	values('123456','123456');

/**
 * Index_st
 */
insert into Index_st(I_stid,I_stname)
	values(1,'特产零食');

insert into Index_st(I_stid,I_stname)
	values(2,'粮酒调味');

insert into Index_st(I_stid,I_stname)
	values(3,'茗茶冲调');

insert into Index_st(I_stid,I_stname)
	values(4,'果蔬生菜');

insert into Index_st(I_stid,I_stname)
	values(5,'酒水饮料');

/**
 * Index_nd
 */
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(1,'休闲零食',1);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(2,'饼干蛋糕',1);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(3,'食用油',2);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(4,'调味品',2);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(5,'龙井',3);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(6,'咖啡',3);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(7,'奶茶',3);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(9,'牛排',4);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(10,'蔬菜',4);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(11,'葡萄酒',5);

insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(12,'饮料/果汁',5);

/**
 * PType
 */
insert into PType(Pid,I_stid,I_ndid)
	values(1,5,12);

insert into PType(Pid,I_stid,I_ndid)
	values(2,5,12);

/**
 * Admin
 */
insert into Admin(Aname,pw)
	values('root','root');