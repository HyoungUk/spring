package com.ch.hello;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
/*@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class)
	public ModelAndView err(Exception e) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("error-handle");
		mav.addObject("e", e);
		return mav;
	}
}*/