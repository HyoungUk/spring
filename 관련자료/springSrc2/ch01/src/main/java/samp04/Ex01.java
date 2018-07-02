package samp04;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = 
			new FileSystemXmlApplicationContext("beans03.xml");
		MessageBean mb = (MessageBean)ac.getBean("mb2");
		mb.sayHello();
		ac.close();
	}
}