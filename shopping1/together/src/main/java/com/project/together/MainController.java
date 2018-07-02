package com.project.together;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.together.pgm.Pgm;
import com.project.together.pgm.PgmService;

@Controller
public class MainController {
	@Autowired
	private PgmService ps;
	
	@RequestMapping("main")
	public String main(HttpSession session, Model model, Pgm pgm) {
		int result = 0;
		if(session.getAttribute("id") == null) { result = 0; }
		else { result = 1; }
		
		List<Pgm> lists = ps.getList();
		List<Pgm> outlists = new ArrayList<Pgm>();
		List<Pgm> inlists = new ArrayList<Pgm>();
		for(Pgm pgmchk:lists ) {
			if(pgmchk.getPrgtype().equals("out")){ outlists.add(pgmchk); }
			else { inlists.add(pgmchk); }
		}
		model.addAttribute("lists", lists);
		model.addAttribute("outlists", outlists);
		model.addAttribute("inlists", inlists);
		model.addAttribute("result", result);
		return "main/main";
	}
	
	@RequestMapping("introduce")
	public String introduce(HttpSession session, Model model) {
			int result = 0;
			if(session.getAttribute("id") == null) { result = 0; }
			else { result = 1; }
			model.addAttribute("result", result);
			return "main/introduce";
	}
}
