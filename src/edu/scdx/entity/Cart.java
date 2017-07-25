package edu.scdx.entity;

public class Cart {
	
			private int Cid;// INT auto_increment primary key,  -- ���ﳵid
			private int Uid;// INT,  -- �û�id
		 	private int Pid;// INT,  -- ��Ʒid
			private int num = 1;// int,   -- ��������
			public int getCid() {
				return Cid;
			}
			public void setCid(int cid) {
				Cid = cid;
			}
			public int getUid() {
				return Uid;
			}
			public void setUid(int uid) {
				Uid = uid;
			}
			public int getPid() {
				return Pid;
			}
			public void setPid(int pid) {
				Pid = pid;
			}
			public int getNum() {
				return num;
			}
			public void setNum(int num) {
				this.num = num;
			}
			@Override
			public String toString() {
				return "Cart [Cid=" + Cid + ", Uid=" + Uid + ", Pid=" + Pid + ", num=" + num + "]";
			}
	
}
