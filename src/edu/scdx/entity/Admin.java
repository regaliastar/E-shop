package edu.scdx.entity;

public class Admin {
	private int Aid;
	private String Aname;
	private String Pw;
	public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		Aid = aid;
	}
	public String getAname() {
		return Aname;
	}
	public void setAname(String aname) {
		Aname = aname;
	}
	public String getPw() {
		return Pw;
	}
	public void setPw(String pw) {
		Pw = pw;
	}
	@Override
	public String toString() {
		return "Admin [Aid=" + Aid + ", Aname=" + Aname + ", Pw=" + Pw + "]";
	}
	

}
