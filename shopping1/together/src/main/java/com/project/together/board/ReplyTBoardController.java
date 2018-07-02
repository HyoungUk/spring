package com.project.together.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.together.member.MbService;

@Controller
public class ReplyTBoardController {
	@Autowired
	private ReplyTBoardService rbs;
	@Autowired
	private TBoardService bs;
	@Autowired
	private MbService ms;
	
	@RequestMapping("rlist")
	public String rlist(int t_num, Model model, HttpSession session) {
		int mb_num = 0;
		if(session.getAttribute("mb_num") != null) {
			mb_num = (Integer)session.getAttribute("mb_num");
		}
		TBoard tboard = bs.select(t_num);
		List<ReplyTBoard> rlist = rbs.list(t_num);
		model.addAttribute("tboard", tboard);
		model.addAttribute("rlist", rlist);
		model.addAttribute("mb_num", mb_num);
		return "boardreply/rlist";
	}

	@RequestMapping("rInsert")
	public String rInsert(ReplyTBoard rb, Model model, HttpSession session) {
		int mno = (Integer) session.getAttribute("mb_num");
		String replyer = ms.select(mno).getNick_name();
		rb.setMno(mno);
		rb.setReplyer(replyer);
		rbs.insert(rb);
		return "redirect:rlist.do?t_num=" + rb.getTno();
	}

	@RequestMapping("rDelete")
	public String rDelete(ReplyTBoard rb, Model model) {
		rbs.delete(rb.getRno());
		return "redirect:rlist.do?t_num=" + rb.getTno();
	}

	@RequestMapping("rUpdate")
	public String rUpdate(ReplyTBoard rb, Model model) {
		rbs.update(rb);
		return "redirect:rlist.do?t_num=" + rb.getTno();
	}
}