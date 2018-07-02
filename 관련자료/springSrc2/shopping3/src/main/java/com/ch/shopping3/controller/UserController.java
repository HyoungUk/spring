package com.ch.shopping3.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ch.shopping3.model.User;
import com.ch.shopping3.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService us;
	@Autowired
	private Validator lv;
	@ModelAttribute
	public User user() {
		return new User();
	}
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginForm() {
		return "login";
	}
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView login(User user, BindingResult br) {
		ModelAndView mav = new ModelAndView();
		lv.validate(user, br);
		if (br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
		} else {
			User ur = us.loginChk(user.getUserId());
			if (ur == null ) {
				br.reject("error.login.user");
				mav.getModel().putAll(br.getModel());
			} else {
				if (ur.getPassword().equals(user.getPassword())) {
					mav.setViewName("loginSuccess");
					mav.addObject("user", ur);
				} else {
					br.reject("error.login.pass");
					mav.getModel().putAll(br.getModel());
				}
			}
		}
		return mav;
	}
	@RequestMapping(value="login2.do", method=RequestMethod.GET)
	public String login2Form() {
		return "login2";
	}
	@RequestMapping(value="login2.do", method=RequestMethod.POST)
	public String login2(User user, Model model) {
		int result = 0;
		User ur = us.loginChk(user.getUserId());
		if (ur == null) result = -1;
		else if (ur.getPassword().equals(user.getPassword()))	{
			result = 1;
			model.addAttribute("user", ur);
		}		
		model.addAttribute("result", result);
		return "login2Result";
	}
}