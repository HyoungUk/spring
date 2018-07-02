package samp01;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			GenericXmlApplicationContext("/samp01/beans01.xml");
		MessageBean mb = (MessageBean)ac.getBean("mb");
		mb.sayHello("대박");
		ac.close();
	}
}