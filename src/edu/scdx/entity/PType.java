package edu.scdx.entity;

public class PType {
	private int PTid;
	private int PId;
	private int I_stid;
	private  int I_ndid;
	public int getPTid() {
		return PTid;
	}
	public void setPTid(int pTid) {
		PTid = pTid;
	}
	public int getPId() {
		return PId;
	}
	public void setPId(int pId) {
		PId = pId;
	}
	public int getI_stid() {
		return I_stid;
	}
	public void setI_stid(int i_stid) {
		I_stid = i_stid;
	}
	public int getI_ndid() {
		return I_ndid;
	}
	public void setI_ndid(int i_ndid) {
		I_ndid = i_ndid;
	}
	@Override
	public String toString() {
		return "PType [PTid=" + PTid + ", PId=" + PId + ", I_stid=" + I_stid + ", I_ndid=" + I_ndid + "]";
	}
	
	
	

}
