package samp09;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac= new 
			ClassPathXmlApplicationContext("/samp09/beans09.xml");
		Vehicle vh = (Vehicle)ac.getBean("vh");
		vh.ride();
		ac.close();
	}
}