package samp13;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository // == Component 세분화
//@Component	// bean 안만들어도 됨
public class ProductDaoImpl implements ProductDao {
	public Product getProduct(String name) {
		return new Product(name, 2000);
	}

}
