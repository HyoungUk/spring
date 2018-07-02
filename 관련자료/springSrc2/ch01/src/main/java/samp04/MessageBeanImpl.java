package samp04;
public class MessageBeanImpl implements MessageBean {	
	private String greet;
	private String name;
	public MessageBeanImpl(String greet, String name) {
		this.greet = greet; this.name = name;  
	}
	public void sayHello() {
		System.out.println(greet+" "+name);		
	}
}