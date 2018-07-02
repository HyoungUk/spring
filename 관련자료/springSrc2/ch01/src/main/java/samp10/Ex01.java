package samp10;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			GenericXmlApplicationContext("/samp10/beans10.xml");
		ProductService ps = (ProductService)ac.getBean("ps");
		Product pt = ps.getProduct();
		System.out.println(pt);
		ac.close();
	}
}