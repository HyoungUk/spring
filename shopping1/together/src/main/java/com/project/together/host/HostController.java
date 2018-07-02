package com.project.together.host;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.together.member.MbService;
import com.project.together.member.Member;

@Controller
public class HostController {
	@Autowired
	private HostService hs;
	@Autowired
	private MbService ms;
	
	@RequestMapping("hostApplyForm")
	public String hostApplyForm(HttpSession session, Model model) {
		int result = 0;
		if(session.getAttribute("mb_num")== null){
			model.addAttribute("result",result);
			return "login/loginForm";
		} else {
			int mb_num = (Integer) session.getAttribute("mb_num");
			Member user = ms.select(mb_num);
			String ny = user.getHost();
			if(ny.equals("y")) {
				String id = (String)session.getAttribute("id");
				Member member = ms.login(id);
				if(member != null) {
					result = 1;
					model.addAttribute("member",member);
				}
			} else { result = 1; }
			model.addAttribute("result",result);
			return "host/hostApplyForm";
		}
	}
	@RequestMapping("hostApply")
	public String hostApply(Host host, Member member, Model model, HttpSession session) {
		int mb_num = (Integer) session.getAttribute("mb_num");
			host.setMb_num(mb_num);
			int check = hs.apply(host);
				if(check > 0) {
					member.setMb_num(mb_num);
					member.setHost("y");
					ms.hostupdate(member);
					model.addAttribute("check", check);
				}
			return "login/logininfo";
		}
}