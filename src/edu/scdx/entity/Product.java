package edu.scdx.entity;

public class Product {
	private int Pid ;    // INT auto_increment primary key,  -- ��Ʒid
	private String  Pname; // VARCHAR(50),  -- ��Ʒ����
	private int stock; // -- �������
	private String image ; // -- ͼƬ·��
	private float price;// -- �ɱ��۸�
	private float salePrice; //  -- ���ۼ۸�
	private String description;  // VARCHAR(512); //  -- ��Ʒ����
	private String addedDate; // date  //-- �ϼ�����
	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		Pid = pid;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
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
	public String getShortDescription() {
		if(description.length() > 50) {
			return description.substring(0, 50)+"...";
		}
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
