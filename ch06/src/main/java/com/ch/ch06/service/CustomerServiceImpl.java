package com.ch.ch06.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

import com.ch.ch06.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	private Map<Integer, Customer> map = new HashMap<Integer, Customer>();
	private int nextId;
	
	@PostConstruct	//제일 먼저 실행
	public void init() {
		register(new Customer("길동", "서울", "kil@k.com"));
		register(new Customer("동길", "대구", "don@k.com"));
		register(new Customer("뚕길", "대전", "DDo@k.com"));
	}
	
	public void register(Customer customer) {
		customer.setId(++nextId);
		map.put(customer.getId(), customer);
	}

	@Override
	public List<Customer> list() {
		return new ArrayList<Customer>(map.values());
	}

	@Override
	public Customer select(int id) {
		return map.get(id);
	}

	@Override
	public void update(Customer customer) {
		map.put(customer.getId(), customer);
	}
	
}
