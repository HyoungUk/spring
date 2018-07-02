package com.ch.iBatis1.controller;
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
	public String main() {
		return "main";
	}
}