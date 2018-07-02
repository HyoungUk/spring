package ch06.model;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
public class Customer {
	private int id;
	@NotBlank(message="허걱")
	@Length(max=20)
	private String name;
	@NotBlank
	@Length(max=100)
	private String address;
	@NotBlank
	@Email(message="으이그 이메일 몰라")
	private String emailAddress;
	public Customer() {	}
	public Customer(String name,String address,String emailAddress) {
		this.name = name; this.address=address;
		this.emailAddress = emailAddress;
	}
	public int getId() {	return id;	}
	public void setId(int id) {	this.id = id;	}
	public String getName() {	return name;	}
	public void setName(String name) {	this.name = name;	}
	public String getAddress() {	return address;	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailAddress() {	return emailAddress;	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
}