package com.ch.ch06.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.ch.ch06.model.Customer;
import com.ch.ch06.service.CustomerService;

@Controller
@RequestMapping("/customer/{id}")	//공통적인것을 빼서 올려놓을 수 있음
@SessionAttributes("editCustomer")
public class EditController {
	@Autowired
	private CustomerService cs;
	
	//http://localhost:8181/ch06/customer/{id}/enter
	@RequestMapping("/edit")
	public String edit(@PathVariable int id, Model model) {
		Customer customer = cs.select(id);
		model.addAttribute("editCustomer", customer);
		return "redirect:enter";
		//	http://localhost:8181/ch06//enter
		//	return "/redirect:enter";
	}
	
	
	@RequestMapping("/enter")
	public String enter(@ModelAttribute("editCustomer") Customer customer) {
		return "/customer/edit/enter";
	}
	
	@RequestMapping(value="/enter", params="_event_process")
	public String confirm(@Valid @ModelAttribute("editCustomer") Customer customer, Errors errors) {
		if(errors.hasErrors()) {
			return "/customer/edit/enter";
		} else {
			return "redirect:review";
		}
	}
	
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public String review(@ModelAttribute("editCustomer") Customer customer) {
		return "/customer/edit/review";
	}
	
	@RequestMapping(value="/review", params="_event_confirm")
	public String edit(@ModelAttribute("editCustomer") Customer customer, SessionStatus sessionStatus) {
		cs.update(customer);
		sessionStatus.setComplete();
		return "redirect:/customer";
	}
	
	@RequestMapping(value="/review", params="_event_revice")
	public String revice() {
		return "redirect:enter";
	}
	
}
