package samp15;

import java.util.Date;

public class Member {
	private int id;
	private String pass;
	private String email;
	private String name;
	private Date reg_date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	@Override
	public String toString() {
		return "[아이디 : " + id + ", 이름 : " + name + ", 이메일 : " + email + ", 등록일 : " + reg_date + "]";
	}
	
}
