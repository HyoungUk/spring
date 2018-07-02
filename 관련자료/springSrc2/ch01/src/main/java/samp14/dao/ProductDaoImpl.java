package samp14.dao;
import org.springframework.stereotype.Repository;
import samp14.model.Product;
@Repository
public class ProductDaoImpl implements ProductDao {
	public Product getProduct(String name) {
		return new Product(name, 2000);
	}
}