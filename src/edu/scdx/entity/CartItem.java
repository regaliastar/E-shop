package edu.scdx.entity;

public class CartItem {
	private int Cid;
	private int Pid;
	private String image;
	private int num;
	private String description;
	private float salePrice;
	
	public CartItem(int cid, int pid, String image, int num, String description, float salePrice) {
		super();
		Cid = cid;
		Pid = pid;
		this.image = image;
		this.num = num;
		this.description = description;
		this.salePrice = salePrice;
	}
	
	public int getCid() {
		return Cid;
	}

	public void setCid(int cid) {
		Cid = cid;
	}

	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		Pid = pid;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getDescription() {
		if(this.description.length() > 30) {
			return this.description.substring(0, 30) + "......";
		}
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}
	
	@Override
	public String toString() {
		return "CartItem [Pid=" + Pid + ", image=" + image + ", num=" + num + ", description=" + description
				+ ", salePrice=" + salePrice + "]";
	}
}
