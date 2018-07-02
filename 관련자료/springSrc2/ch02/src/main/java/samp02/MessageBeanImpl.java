package samp02;

public class MessageBeanImpl implements MessageBean {
	private String greet;	
	public void setGreet(String greet) {
		this.greet = greet;
	}

	public void sayHello(String name) {
		try {	Thread.sleep(1000);
		} catch (InterruptedException e) {	}
		System.out.println(name+"님 "+greet);		
	}
}