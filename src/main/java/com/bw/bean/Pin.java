package com.bw.bean;

public class Pin {

	private Integer pid;
	
	private String pname;

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

	public Pin(Integer pid, String pname) {
		super();
		this.pid = pid;
		this.pname = pname;
	}

	public Pin() {
		super();
	}

	@Override
	public String toString() {
		return "Pin [pid=" + pid + ", pname=" + pname + "]";
	}

	
}
