package edu.scdx.entity;

public class News {
	private int Nid;
	private String Tittle;
	private String Image;
	private String Content;
	private String Start_Date;
	private String end_dates;
	public int getNid() {
		return Nid;
	}
	public void setNid(int nid) {
		Nid = nid;
	}
	public String getTittle() {
		return Tittle;
	}
	public void setTittle(String tittle) {
		Tittle = tittle;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getStart_Date() {
		return Start_Date;
	}
	public void setStart_Date(String start_Date) {
		Start_Date = start_Date;
	}
	public String getEnd_dates() {
		return end_dates;
	}
	public void setEnd_dates(String end_dates) {
		this.end_dates = end_dates;
	}
	@Override
	public String toString() {
		return "News [Nid=" + Nid + ", Tittle=" + Tittle + ", Image=" + Image + ", Content=" + Content + ", Start_Date="
				+ Start_Date + ", end_dates=" + end_dates + "]";
	}
	
	
}
