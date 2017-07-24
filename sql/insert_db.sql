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
	values(1,'男装');

insert into Index_st(I_stid,I_stname)
	values(2,'女装');

insert into Index_st(I_stid,I_stname)
	values(3,'鞋');

insert into Index_st(I_stid,I_stname)
	values(4,'服装杂饰');

insert into Index_st(I_stid,I_stname)
	values(5,'儿童');

/**
 * Index_nd
 */
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(1,'T恤',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(2,'衬衫',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(3,'裤子',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(4,'毛衣',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(5,'开衫',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(6,'外套',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(7,'背心',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(8,'内衣',1);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(1,'T恤',2);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(2,'衬衫',2);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(3,'裤·裙',2);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(4,'毛衣',2);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(5,'开衫',2);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(6,'外套',2);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(7,'内衣',2);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(1,'女士鞋',3);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(2,'女士休闲鞋',3);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(3,'女士轻便运动鞋',3);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(4,'女士靴子',3);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(5,'男士鞋',3);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(6,'男士休闲鞋',3);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(7,'男士轻便运动鞋',3);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(1,'披肩·围巾',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(2,'帽子',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(3,'耳罩',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(4,'钱包',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(5,'手套',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(6,'皮带',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(7,'伞·雨伞',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(8,'手帕',4);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(1,'儿童上装',5);
insert into Index_nd(I_ndid,I_ndname,I_stid)
	values(2,'儿童杂货',5);

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