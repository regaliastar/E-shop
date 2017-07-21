package edu.scdx.entity;


public class Order {

	 int Oid ;//auto_increment primary key,  -- 订单id
	 int Uid ; //,  -- 用户id
 	 int Pid ; //  -- 商品id
 	 String sendName; //varchar(20),  -- 收货人姓名
	 String sendAddress ;// text,  -- 收获地址
	 String sendTel;// varchar(11),   -- 收获人电话
	 String payment;//  varchar(10),   -- 付款方式（货到付款/支付宝/微信）
 	 String memo;//  varchar(50),  -- 备注
 	 String time;// date, -- 订单生成时间
 	 int tag;//  int, -- 订单处理标记 0/1
	public int getOid() {
		return Oid;
	}
	public void setOid(int oid) {
		Oid = oid;
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
	public String getSendName() {
		return sendName;
	}
	public void setSendName(String sendName) {
		this.sendName = sendName;
	}
	public String getSendAddress() {
		return sendAddress;
	}
	public void setSendAddress(String sendAddress) {
		this.sendAddress = sendAddress;
	}
	public String getSendTel() {
		return sendTel;
	}
	public void setSendTel(String sendTel) {
		this.sendTel = sendTel;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getTag() {
		return tag;
	}
	public void setTag(int tag) {
		this.tag = tag;
	}
	@Override
	public String toString() {
		return "Order [Oid=" + Oid + ", Uid=" + Uid + ", Pid=" + Pid + ", sendName=" + sendName + ", sendAddress="
				+ sendAddress + ", sendTel=" + sendTel + ", payment=" + payment + ", memo=" + memo + ", time=" + time
				+ ", tag=" + tag + "]";
	}
	
}
