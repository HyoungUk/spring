package samp14.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import samp14.dao.ProductDao;
import samp14.model.Product;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao pd;
	public Product getProduct() {
		return pd.getProduct("라면");
	}
}