package samp03;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			ClassPathXmlApplicationContext("/samp03/beans03.xml");
		MessageBean mb = (MessageBean)ac.getBean("mb");
		mb.sayHello("철수");
		ac.close();
	}
}