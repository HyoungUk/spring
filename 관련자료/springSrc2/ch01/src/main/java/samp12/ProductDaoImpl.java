package samp12;
import org.springframework.stereotype.Component;
@Component
public class ProductDaoImpl implements ProductDao {
	public Product getProduct(String title) {
		return new Product(title, 2000);
	}	
}