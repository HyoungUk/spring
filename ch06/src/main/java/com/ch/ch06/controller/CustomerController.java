package com.ch.ch06.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.ch06.model.Customer;
import com.ch.ch06.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService cs;
	
	@RequestMapping("/")
	public String init() {
		return "forward:/customer";
	}
	
	@RequestMapping("/customer")
	public String list(Model model) {
		List<Customer> list = cs.list();
		model.addAttribute("list", list);
		return "/customer/list";
	}
	
	@RequestMapping("/customer/{id}")
	public String detail(@PathVariable int id, Model model) {
		Customer ct = cs.select(id);
		model.addAttribute("ct", ct);
		return "/customer/detail";
	}
	
	
}
