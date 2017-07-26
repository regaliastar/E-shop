package edu.scdx.entity;

public class Address {
	private int Aid;
	private int Uid;
	private String Addr;
	private String Zip;
	private String SendName;
	private String SendTel;
	
	public String getZip() {
		return Zip;
	}
	public void setZip(String zip) {
		Zip = zip;
	}
	public String getSendName() {
		return SendName;
	}
	public void setSendName(String sendName) {
		SendName = sendName;
	}
	public String getSendTel() {
		return SendTel;
	}
	public void setSendTel(String sendTel) {
		SendTel = sendTel;
	}
	public int getCurrent() {
		return Current;
	}
	public void setCurrent(int current) {
		Current = current;
	}
	private int Current;
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
		return "Address [Aid=" + Aid + ", Uid=" + Uid + ", Addr=" + Addr + ", Zip=" + Zip + ", SendName=" + SendName
				+ ", SendTel=" + SendTel + ", Current=" + Current + "]";
	}
	

}
