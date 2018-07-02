package samp03;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = 
			new FileSystemXmlApplicationContext("bean01.xml");
		// MessageBean mb = ac.getBean("mb",MessageBean.class );
		// MessageBean mb = (MessageBean)ac.getBean("mb");
		// MessageBean mb = ac.getBean(MessageBean.class);
		MessageBean mb = (MessageBean)ac.getBean("a");
		mb.sayHello("대박");
		ac.close();		
	}
}