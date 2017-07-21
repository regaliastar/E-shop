package edu.scdx.entity;

public class Product {
	private int Pid ;    // INT auto_increment primary key,  -- 商品id
	private String  Pname; // VARCHAR(50),  -- 商品名称
	private int stock; // -- 库存数量
	private String image ; // -- 图片路径
	private float price;// -- 成本价格
	private float salePrice; //  -- 销售价格
	private String description;  // VARCHAR(512); //  -- 商品描述
	private String addedDate; // date  //-- 上架日期
	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		this.Pid = pid;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		this.Pname = pname;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(String addedDate) {
		this.addedDate = addedDate;
	}
	@Override
	public String toString() {
		return "Product [Pid=" + Pid + ", Pname=" + Pname + ", stock=" + stock + ", image=" + image + ", price=" + price
				+ ", salePrice=" + salePrice + ", description=" + description + ", addedDate=" + addedDate + "]";
	}
	
}
