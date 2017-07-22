package edu.scdx.entity;

public class Address {
	private int Aid;
	private int Uid;
	private String Addr;
	public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		Aid = aid;
	}
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getAddr() {
		return Addr;
	}
	public void setAddr(String addr) {
		Addr = addr;
	}
	@Override
	public String toString() {
		return "Address [Aid=" + Aid + ", Uid=" + Uid + ", Addr=" + Addr + "]";
	}
	

}
