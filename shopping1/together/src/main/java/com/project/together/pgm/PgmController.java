package com.project.together.pgm;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.project.together.host.Host;
import com.project.together.host.HostService;
import com.project.together.member.MbService;
import com.project.together.member.Member;

@Controller
public class PgmController {
	@Autowired
	private PgmService ps;
	@Autowired
	private MbService ms;
	@Autowired
	private HostService hs;
	
	@RequestMapping("pgmCreForm")
	public String pgmCreForm(Model model, HttpSession session) {
		int result = 0;
		if ((Integer) session.getAttribute("mb_num") == null) {
			model.addAttribute("result", result);
			return "pgm/clause";
		} else {
			int mb_num = (Integer) session.getAttribute("mb_num");
			Member member = ms.select(mb_num);
			String check = member.getHost();
			if (session.getAttribute("mb_num") != null) {
				result = 1;
				model.addAttribute("result", result);
				if (check.equals("y")) {
					return "pgm/pgmCreForm";
				} else {
					return "pgm/clause";
				}
			} else {
				model.addAttribute("result", result);
				return "pgm/clause";
			}
		}
	}
	
	@RequestMapping("pgmCre")
	public String pgmCre(Model model, MultipartFile mf, HttpSession session, Pgm pgm)
				throws IllegalStateException, IOException {
		String fileName = (String) pgm.getWall_paper().getOriginalFilename();
		Pgm check2 = ps.check(fileName);
		String check3 = check2.getWall_paper_name();
		if(check3 != null) {
			fileName = System.currentTimeMillis() + "_" + fileName;
		}
		String path = "D:\\spring\\together\\together\\src\\main\\webapp\\images\\upload";
		FileOutputStream fos = new FileOutputStream(path+"/"+fileName);
		fos.write(pgm.getWall_paper().getBytes());
		fos.close();
		String relpath="images/upload";
		pgm.setWall_paper_url(relpath+"/"+fileName);
		pgm.setWall_paper_name(fileName);
		int mb_num = (Integer) session.getAttribute("mb_num");
		int result = 1;
		Host host = hs.search(mb_num);
		int host_num = host.getHost_num();
		pgm.setHost_num(host_num);
		int check = ps.add(pgm);
		model.addAttribute("result", result);
		model.addAttribute("check",check);
		return "main/main";
	}
	
	@RequestMapping("inquiry")
	public String inquiry(Model model, HttpSession session, Pgm pgm) {
		int result = 0;
		if(session.getAttribute("id") == null) { result = 0; }
		else { result = 1; }
		Pgm pgmInfo = ps.select(pgm.getNum());
		Host host = hs.select(pgmInfo.getHost_num());
		model.addAttribute("result", result);
		model.addAttribute("pgmInfo", pgmInfo);
		model.addAttribute("host", host);
		return "pgm/inquiry";
	}
}
