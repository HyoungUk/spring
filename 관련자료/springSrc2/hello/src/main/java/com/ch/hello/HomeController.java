package com.ch.hello;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class HomeController {	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/time", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);		
		model.addAttribute("serverTime", formattedDate );		
		return "home";
	}
	@RequestMapping("/gugu")
	public String gugu(Model model) {
		int num = (int)(Math.random()*8) + 2;
		model.addAttribute("num", num);
		return "gugu";
	}
	@RequestMapping("/color")
	public String color(Model model) {
		String[] color = {"red", "orange", "yellow", "green",
				"blue", "navy", "violet" };
		int num = (int)(Math.random()*7);
		model.addAttribute("color", color[num]);
		return "color";
	}
	@RequestMapping("addrForm")
	public String addrForm() {
		return "addrForm";
	}
	@RequestMapping("addr")
	// public String addr(String name, String addr, Model model) {
	public String addr(Person person, Model model) {
		// String msg = name+"님 "+addr+"에 사시는 군요";
		String msg = person.getName()+"님 "+person.getAddr()+"에 사시는 군요";
		model.addAttribute("msg", msg);
		return "addr";
	}
	@RequestMapping("operInput")
	public String operInput() {
		return "operInput";
	}
	@RequestMapping("oper")
	public String oper(int num1, int num2, Model model) {
		model.addAttribute("add", num1+num2);
		model.addAttribute("min", num1-num2);
		model.addAttribute("mul", num1*num2);
		model.addAttribute("div1", num1/num2);
		return "oper";
	}
/*	@ExceptionHandler(ArithmeticException.class)
	public String err() {
		return "arith";
	}*/
}