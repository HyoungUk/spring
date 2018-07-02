package samp09;

public class MessageBeanImpl implements MessageBean {
	private String name;
	private String greet;
	private Outputer out;

	public void setName(String name) {
		this.name = name;
	}
	public void setGreet(String greet) {
		this.greet = greet;
	}
	public void setOut(Outputer out) {
		this.out = out;
	}

	public void sayHello() {
		String msg = name + "님" + greet;
		System.out.println(msg);
		out.print(msg);
	}

}
