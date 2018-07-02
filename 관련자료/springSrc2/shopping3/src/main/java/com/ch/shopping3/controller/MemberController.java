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

import com.ch.shopping3.model.Member;
import com.ch.shopping3.service.MemberService;
@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private Validator mv;
	@ModelAttribute
	public Member create() {
		return new Member();
	}
	@RequestMapping(value="memberLogin", method=RequestMethod.GET)
	public String memberLoginForm() {
		return "memberLogin";
	}
	@RequestMapping(value="memberLogin", method=RequestMethod.POST)
	public ModelAndView memberLogin(Member member,BindingResult br) {
		ModelAndView mav = new ModelAndView();
		mv.validate(member, br);
		if (br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
		} else {
			Member mem = ms.loginChk(member.getId());
			if (mem == null) {
				br.reject("error.login.member");
				mav.getModel().putAll(br.getModel());
			}else if (mem.getPassword().equals(member.getPassword())) {
				mav.setViewName("memberSuccess");
				mav.addObject("member", mem);
			} else {
				br.reject("error.login.pass");
				mav.getModel().putAll(br.getModel());
			}
		}
		return mav;
	}
	@RequestMapping(value="memberLogin2", method=RequestMethod.GET)
	public String memberLoginForm2() {
		return "memberLogin2";
	}
	@RequestMapping(value="memberLogin2", method=RequestMethod.POST)
	public String memberLogin2(Member member, Model model) {
		int result = 0;
		Member mem = ms.loginChk(member.getId());
		if (mem == null) result = -1;
		else if (mem.getPassword().equals(member.getPassword())) {
			result = 1;
			model.addAttribute("member", mem);
		}
		model.addAttribute("result", result);
		return "memberResult";
	}
}