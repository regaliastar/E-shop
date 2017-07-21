package edu.scdx.entity;

public class User {
	private int Uid;  //auto_increment primary key,  -- 用户id
	private String Uname;// VARCHAR(50),  -- 用户名
	private String pw ; //VARCHAR(20),  -- 密码
	private String realName ;//varchar(20),  -- 真实姓名
	private String tel; //varchar(11),  -- 手机号码
	private String address ;//text,   -- 默认地址
	private String zip  ;//varchar(6),   -- 邮编
	private String email  ;//varchar(50),  -- 邮箱
	private String avatar ;// varchar(255) -- 头像路径
	
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	@Override
	public String toString() {
		return "User [Uid=" + Uid + ", Uname=" + Uname + ", pw=" + pw + ", realName=" + realName + ", tel=" + tel
				+ ", address=" + address + ", zip=" + zip + ", email=" + email + ", avatar=" + avatar + "]";
	}
  
}
