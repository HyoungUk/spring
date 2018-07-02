package samp13;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
//@Component == Service 세분화
public class ProductServiceImpl implements ProductService {
	@Autowired  // setter 안만들어도 됨
	private ProductDao pd;
	
	public Product getProduct() {
		return pd.getProduct("오징어");
	}
	
}
