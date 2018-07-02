package samp18;
import java.util.Date;
public class Member {
	private int id;			private String email;
	private String pass;	private String name;
	private Date reg_date;
	
	public Member(String email,String pass,String name,
			Date reg_date) {
		this.email = email;  this.pass = pass;
		this.name  = name;   this.reg_date = reg_date;
	}
	
	public int getId() {	return id;	}
	public void setId(int id) {	this.id = id;	}
	public String getEmail() {	return email;	}
	public void setEmail(String email) {	this.email = email;	}
	public String getPass() {	return pass;	}
	public void setPass(String pass) {	this.pass = pass;	}
	public String getName() {	return name;	}
	public void setName(String name) {	this.name = name;	}
	public Date getReg_date() {	return reg_date;	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String toString() {
		return "회원[아이디"+id+", 이름:"+name+", 암호:"+pass+
				", 이메일:"+email+", 등록일:"+reg_date+"]";
	}
}