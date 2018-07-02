package samp06;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			ClassPathXmlApplicationContext("/samp06/beans06.xml");
		MessageBean mb = (MessageBean)ac.getBean("mb");
		mb.sayHello();
		ac.close();
	}
}