package com.project.together.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MbController {
	@Autowired
	private MbService ms;

	@RequestMapping("joinForm")
	public String joinForm(Model model) {
		int result = 0;
		model.addAttribute("result", result);
		return "join/joinForm";
	}
	@RequestMapping("id_Chk")
	public String id_Chk(String id, Model model) {
		Member member = ms.login(id);
		String msg = "";
		int same = 0;
		if(member==null) {
			msg ="사용 가능한 아이디입니다";
		}else {
			msg ="이미 있는 아이디입니다";
			same = 1;
		}
		model.addAttribute("same",same);
		model.addAttribute("msg",msg);
		return "join/id_Chk";
	}
	
	@RequestMapping("join")
	public String join(Member member, Model model) {
		int result = ms.join(member);
		model.addAttribute("result", result);
		return "join/join";
	}
	
	@RequestMapping("loginForm")
	public String loginForm(Model model) {
		int result = 0;
		model.addAttribute("result", result);
		return "login/loginForm";
	}
	
	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session) {
		Member mb = ms.login(member.getId());
		int result = 0;
	
		if(mb == null) result = -1;
		else if(mb.getPassword().equals(member.getPassword())) {
			result = 1;
			session.setAttribute("id", mb.getId());
			session.setAttribute("mb_num", mb.getMb_num());
		}
		model.addAttribute("result", result);
		return "login/login";
	}
	
	@RequestMapping("logout")
	public String login(Model model, HttpSession session) {
		int result = 0;
		session.invalidate();
		model.addAttribute("result", result);
		return "login/logout";
	}
	
	@RequestMapping("logininfo")
	public String logininfo(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		Member member = ms.login(id);
		int result = 0;
		if(member != null) {result = 1;}
		model.addAttribute("member",member);
		model.addAttribute("result",result);
		return "login/logininfo";
	}
	
	@RequestMapping("memberUpdateForm")
	public String memberUpdateForm(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		Member member = ms.login(id);
		int result = 0;
		if(member != null) {result = 1;}
		model.addAttribute("member",member);
		model.addAttribute("result",result);
		return "login/memberUpdateForm";
	}
	
	@RequestMapping("memberUpdate")
	public String memberUpdate(Member member, Model model) {
		int result = ms.update(member);
		model.addAttribute("result",result);
		return "login/memberUpdate";
	}
	
	@RequestMapping("memberDeleteForm")
	public String memberDeleteForm(Model model, HttpSession session) {
		int result = 0;
		if(session.getAttribute("id") == null) { result = 0; }
		else { result = 1; }
		String id = (String)session.getAttribute("id");
		Member member = ms.login(id);
		model.addAttribute("password",member.getPassword());
		model.addAttribute("result", result);
		return "login/memberDeleteForm";
	}
	
	@RequestMapping("memberDelete")
	public String memberDelete(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		int result = ms.delete(id);
		
		//회원이 지워질때 해당 회원의 등록 및 신청 프로그램의 같이 지움상태로 바꾼다
		
		session.invalidate();
		model.addAttribute("result",result);
		return "login/memberDelete";
	}
	
}