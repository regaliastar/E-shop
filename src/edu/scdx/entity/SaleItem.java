package edu.scdx.entity;

public class SaleItem {
	private String image;
	private String description;
	private int num;
	private float salePrice;
	private float totlePrice;
	
	public SaleItem(String image, String description, int num, float salePrice, float totlePrice) {
		super();
		this.image = image;
		this.description = description;
		this.num = num;
		this.salePrice = salePrice;
		this.totlePrice = totlePrice;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public float getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}
	public float getTotlePrice() {
		return totlePrice;
	}
	public void setTotlePrice(float totlePrice) {
		this.totlePrice = totlePrice;
	}
	@Override
	public String toString() {
		return "SaleItem [image=" + image + ", description=" + description + ", num=" + num + ", salePrice=" + salePrice
				+ ", totlePrice=" + totlePrice + "]";
	}

	
}
