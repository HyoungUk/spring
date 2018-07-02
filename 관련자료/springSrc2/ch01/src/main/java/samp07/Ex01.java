package samp07;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			ClassPathXmlApplicationContext("/samp07/beans07.xml");
		Vehicle vh = (Vehicle)ac.getBean("vh");
		vh.ride();
		ac.close();
	}
}