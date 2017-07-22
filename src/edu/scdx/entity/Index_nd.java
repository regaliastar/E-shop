package edu.scdx.entity;

public class Index_nd {
	private int I_ndid;
	private String I_ndname;
	private int I_stid;
	//澶栭儴閿�
	public int getI_ndid() {
		return I_ndid;
	}
	public void setI_ndid(int i_ndid) {
		I_ndid = i_ndid;
	}
	public String getI_ndname() {
		return I_ndname;
	}
	public void setI_ndname(String i_ndname) {
		I_ndname = i_ndname;
	}
	public int getI_stid() {
		return I_stid;
	}
	public void setI_stid(int i_stid) {
		I_stid = i_stid;
	}
	@Override
	public String toString() {
		return "Index_nd [I_ndid=" + I_ndid + ", I_ndname=" + I_ndname + ", I_stid=" + I_stid + "]";
	}



}
