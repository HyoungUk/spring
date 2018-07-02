package samp02;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new
			ClassPathXmlApplicationContext("/samp02/samp02.xml");
		ProductService ps = ac.getBean(ProductService.class);
		Product product = ps.getProduct();
		System.out.println(product);
		ac.close();
	}
}