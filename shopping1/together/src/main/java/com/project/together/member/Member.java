package com.project.together.member;

import java.sql.Date;

public class Member {
	private int mb_num;
	private String id;
	private String password;
	private String nick_name;
	private String name;
	private String tel;
	private String addr;
	private String gender;
	private int inside;
	private int outside;
	private Date birth;
	private String email;
	private Date acountCr;
	private String del;
	private String manager;
	private String host;
	
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public int getInside() {
		return inside;
	}
	public void setInside(int inside) {
		this.inside = inside;
	}
	public int getOutside() {
		return outside;
	}
	public void setOutside(int outside) {
		this.outside = outside;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNick_name() {
		return nick_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public int getMb_num() {
		return mb_num;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setMb_num(int mb_num) {
		this.mb_num = mb_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	
	
}