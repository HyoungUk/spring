package samp14;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import samp14.model.Product;
import samp14.service.ProductService;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			GenericXmlApplicationContext("/samp14/beans14.xml");
		ProductService ps = ac.getBean(ProductService.class);
		Product product   = ps.getProduct();
		System.out.println(product);
		ac.close();
	}
}
