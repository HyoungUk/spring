package com.project.together.host;

import java.sql.Date;

public class Host {
	private int host_num;
	private int mb_num;
	private String host_name;
	private Date acountCr;
	private String del;
	
	public int getHost_num() {
		return host_num;
	}
	public void setHost_num(int host_num) {
		this.host_num = host_num;
	}
	public int getMb_num() {
		return mb_num;
	}
	public void setMb_num(int mb_num) {
		this.mb_num = mb_num;
	}
	public String getHost_name() {
		return host_name;
	}
	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}
	public Date getAcountCr() {
		return acountCr;
	}
	public void setAcountCr(Date acountCr) {
		this.acountCr = acountCr;
	}
	public String getDel() {
		return del;
	}
	public void setDel(String del) {
		this.del = del;
	}
}
