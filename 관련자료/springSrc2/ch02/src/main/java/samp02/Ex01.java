package samp02;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			ClassPathXmlApplicationContext("/samp02/beans01.xml");
		MessageBean mb = (MessageBean)ac.getBean("proxy");
		mb.sayHello("철수");
		ac.close();
	}
}