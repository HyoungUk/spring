package com.project.together.pgmapply;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.together.host.Host;
import com.project.together.host.HostService;
import com.project.together.member.MbService;
import com.project.together.member.Member;
import com.project.together.pgm.Pgm;
import com.project.together.pgm.PgmService;

@Controller
public class PgmApplyController {
	@Autowired
	private PgmApplyService as;
	@Autowired
	private MbService ms;
	@Autowired
	private PgmService ps;
	@Autowired
	private HostService hs;
	
	@RequestMapping("pgmApplyForm")
	public String pgmApplyForm(Model model, HttpSession session, Pgm pgm) {
		int result = 0;
		if(session.getAttribute("id") != null) { 
			result = 1;
			int mb_num = (Integer) session.getAttribute("mb_num");
			Pgm pgmInfo = ps.select(pgm.getNum());
			Host host = hs.select(pgmInfo.getHost_num());
			Member hostInfo = ms.select(host.getMb_num());
			Member member = ms.select(mb_num);
			model.addAttribute("result", result);
			model.addAttribute("member", member);
			model.addAttribute("pgmInfo", pgmInfo);
			model.addAttribute("host", host);
			model.addAttribute("hostInfo", hostInfo);
			return "pgm/pgmApplyForm";
		}
		model.addAttribute("result", result);
		return "login/loginForm";
	}
	
	@RequestMapping("pgmApply")
	public String pgmApply(Model model,Pgm pgm, Member member, PgmApply pgmApp, HttpSession session) {
		int result = 1;
		pgmApp.setMb_num(member.getMb_num());
		pgmApp.setPgm_num(pgm.getNum());
		pgmApp.setStart_date(pgm.getStart_date());
		pgmApp.setEnd_date(pgm.getEnd_date());
		int check = as.apply(pgmApp);
		model.addAttribute("result", result);
		model.addAttribute("check", check);
		return "pgm/pgmApply";
	}
}
