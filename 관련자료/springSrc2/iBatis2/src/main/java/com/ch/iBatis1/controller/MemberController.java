package com.ch.iBatis1.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.iBatis1.model.Member;
import com.ch.iBatis1.service.MemberService;
@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@RequestMapping("joinForm")
	public String joinForm() {
		return "joinForm";
	}
	@RequestMapping("idChk")
	public String idChk(String id, Model model) {
		Member member = ms.select(id);
		String msg = "";
		if (member == null) msg = "사용 가능한 아이디입니다";
		else msg = "딴 거 알아봐 ! 누가 쓰도 있어";
		model.addAttribute("msg", msg);
		return "idChk";
	}
	@RequestMapping("join")
	public String join(Member member, Model model) {
		int result = ms.insert(member);
		model.addAttribute("result", result);
		return "join";
	}
	@RequestMapping("main")
	public String main(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		Member member = ms.select(id);
		model.addAttribute("member", member);
		return "main";
	}
	@RequestMapping("loginForm")
	public String loginForm() {
		return "loginForm";
	}
	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session) {
		int result = 0;
		Member mem = ms.select(member.getId());
		if (mem==null) result = -1;
		else {
			if (mem.getPassword().equals(member.getPassword())) {
				session.setAttribute("id", member.getId());
				result = 1;
			} else result = 0;
		}
		model.addAttribute("result", result);
		return "login";
	}
	@RequestMapping("detail")
	public String detail(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		Member member = ms.select(id);
		model.addAttribute("member", member);
		return "detail";
	}
	@RequestMapping("updateForm")
	public String updateForm(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		Member member = ms.select(id);
		model.addAttribute("member", member);
		return "updateForm";
	}
	@RequestMapping("update")
	public String update(Member member, Model model) {
		int result = ms.update(member);
		model.addAttribute("result", result);
		return "update";
	}
	@RequestMapping("delete")
	public String delete(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		int result= ms.delete(id); 
		model.addAttribute("result", result);
		if (result >0 ) session.invalidate();
		return "delete";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "logout";
	}
}