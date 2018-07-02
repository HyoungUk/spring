package ch03;
import java.sql.Date;
public class Member {
	private String id;			private String email;
	private String password;	private String name;
	private Date regdate;
	
	public String getId() {	return id;	}
	public void setId(String id) {	this.id = id;	}
	public String getEmail() {	return email;	}
	public void setEmail(String email) {	this.email = email;	}
	public String getPassword() {	return password;	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {	return name;	}
	public void setName(String name) {	this.name = name;	}
	public Date getRegdate() {	return regdate;	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}	
	public String toString() {
		return "[아이디"+id+", 이메일:"+email+
			", 이름:"+name+", 등록일:"+regdate+"]";
	}
}