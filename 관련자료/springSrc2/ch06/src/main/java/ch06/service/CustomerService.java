package ch06.service;
import java.util.List;
import ch06.model.Customer;
public interface CustomerService {
	List<Customer> list();
	Customer select(int id);
	void update(Customer customer);

}