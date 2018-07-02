package samp17;
public class RegisterMember {
	private String email;		private String pass;
	private String confirmPass; private String name;

	public String getEmail() {	return email;	}
	public void setEmail(String email) {	this.email = email;	}
	public String getPass() {	return pass;	}
	public void setPass(String pass) {	this.pass = pass;	}
	public String getConfirmPass() {	return confirmPass;	}
	public void setConfirmPass(String confirmPass) {
		this.confirmPass = confirmPass;
	}
	public String getName() {	return name;	}
	public void setName(String name) {	this.name = name;	}
	public boolean isPass() {
		return pass.equals(confirmPass);
	}
}