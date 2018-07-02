package ch06.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct; 
import org.springframework.stereotype.Service;
import ch06.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {
	private Map<Integer, Customer> map = 
		new HashMap<Integer, Customer>();
	private int nextId;
	public List<Customer> list() {
		return new ArrayList<Customer>(map.values());
	}
	@PostConstruct
	public void init() {
		regist(new Customer("길동","강남","k1@k.com"));
		regist(new Customer("연산군","한양","k2@k.com"));
		regist(new Customer("장녹수","대동강","k3@k.com"));
	}
	public Customer regist(Customer customer) {
		customer.setId(++nextId);
		map.put(customer.getId(), customer);
		return customer;
	}
	public Customer select(int id) {
		return map.get(id);
	}
	public void update(Customer customer) {
		map.put(customer.getId(), customer);		
	}
}