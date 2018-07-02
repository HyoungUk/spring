package com.project.together.utils;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.together.board.TBoard;
import com.project.together.board.TBoardService;
import com.project.together.member.MbService;
import com.project.together.member.Member;

@Controller
public class UtilController {
	@Autowired
	private MbService ms;
	@Autowired
	private TBoardService ts;
	
	@RequestMapping("insertmany")
	public String insertmany(Member member, HttpSession session, Model model) {

		for (int i = 0; i < 224; i++) {
			member.setId("id" + i);
			member.setPassword("1");
			member.setNick_name("별명" + i);
			member.setName("이름" + i);
			member.setTel("010-2221-2" + i);
			member.setAddr("주소" + i);
			member.setGender("man");
			member.setInside(0);
			member.setOutside(0);
			member.setBirth(null);
			member.setEmail(null);
			member.setAcountCr(null);
			member.setDel("n");
			member.setManager("n");
			member.setHost("n");
			ms.join(member);
		}
		int result = 0;
		if (session.getAttribute("id") == null) {
			model.addAttribute("result", result);
			return "main/main";
		} else {
			result = 1;
			model.addAttribute("result", result);
			return "main/main";
		}
	}
	
	@RequestMapping("insertboard")
	public String inserttboard(TBoard tboard, HttpSession session, Model model) {
		for (int i = 0; i < 224; i++) {
			tboard.setMb_num(i);
			tboard.setSubject("제목"+i);
			tboard.setContent("내용"+i);
			tboard.setNick_name("별명"+i);
			tboard.setReadcount(0);
			tboard.setRef(i);
			tboard.setRe_step(0);
			tboard.setRe_level(0);
			tboard.setIp("0.0.0.0.0.0.0.1");
			ts.insert(tboard);
		}

		int result = 0;
		if (session.getAttribute("id") == null) {
			model.addAttribute("result", result);
			return "main/main";
		} else {
			result = 1;
			model.addAttribute("result", result);
			return "main/main";
		}
	}
}