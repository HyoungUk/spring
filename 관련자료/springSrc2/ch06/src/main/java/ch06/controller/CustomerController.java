package ch06.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ch06.model.Customer;
import ch06.service.CustomerService;
@Controller
public class CustomerController {
	@Autowired
	private CustomerService cs;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String init() {
		return "forward:/customer";
	}
	@RequestMapping(value="/customer",method=RequestMethod.GET)
	public String list(Model model) {
		List<Customer> customers = cs.list();
		model.addAttribute("customers", customers);
		return "/customer/list";
	}
	@RequestMapping("/customer/{id}")
	public String detail(@PathVariable int id, Model model) {
		Customer ct = cs.select(id);
		model.addAttribute("customer", ct);
		return "/customer/detail";
	}
}