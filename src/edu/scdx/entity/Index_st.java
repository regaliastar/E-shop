package edu.scdx.entity;


public class Index_st {
	int I_stid;// INT primary key, -- Ò»¼¶Ë÷ÒýID
 	String I_stname;// VARCHAR(50)
	public int getI_stid() {
		return I_stid;
	}
	public void setI_stid(int i_stid) {
		I_stid = i_stid;
	}
	public String getI_stname() {
		return I_stname;
	}
	public void setI_stname(String i_stname) {
		I_stname = i_stname;
	}
	@Override
	public String toString() {
		return "Index_st [I_stid=" + I_stid + ", I_stname=" + I_stname + "]";
	}
}
