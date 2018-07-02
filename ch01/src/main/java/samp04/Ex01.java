package samp04;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = 
			new FileSystemXmlApplicationContext("bean04.xml");
		Vehicle vh = ac .getBean(Vehicle.class);
		vh.ride("홍길동");
		ac.close();
	}
}