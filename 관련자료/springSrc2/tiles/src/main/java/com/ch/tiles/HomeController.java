package com.ch.tiles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping(value = "/home")
	public String home() {		
		return "home";
	}
	@RequestMapping("/first")
	public String first() {
		return "first";
	}
	@RequestMapping("/second")
	public String second() {
		return "second";
	}
}