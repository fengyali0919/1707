package com.bw.bean;

public class Goods {

	private Integer gid;
	private String gname;
	private String gename;
	private String size;
	private String price;
	private String gsum;
	private String pic;
	private String gimg;
	private Integer pid;
	private String pname;
	private Integer tid;
	private String tname;
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGename() {
		return gename;
	}
	public void setGename(String gename) {
		this.gename = gename;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getGsum() {
		return gsum;
	}
	public void setGsum(String gsum) {
		this.gsum = gsum;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getGimg() {
		return gimg;
	}
	public void setGimg(String gimg) {
		this.gimg = gimg;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public Goods(Integer gid, String gname, String gename, String size, String price, String gsum, String pic,
			String gimg, Integer pid, String pname, Integer tid, String tname) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gename = gename;
		this.size = size;
		this.price = price;
		this.gsum = gsum;
		this.pic = pic;
		this.gimg = gimg;
		this.pid = pid;
		this.pname = pname;
		this.tid = tid;
		this.tname = tname;
	}
	public Goods() {
		super();
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", gename=" + gename + ", size=" + size + ", price=" + price
				+ ", gsum=" + gsum + ", pic=" + pic + ", gimg=" + gimg + ", pid=" + pid + ", pname=" + pname + ", tid="
				+ tid + ", tname=" + tname + "]";
	}
	
	
}
