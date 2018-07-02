package com.ch.board.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.board.model.Board;
import com.ch.board.model.ReplyBoard;
import com.ch.board.service.BoardService;
import com.ch.board.service.ReplyBoardService;
@Controller
public class ReplyBoardController {
	@Autowired
	private ReplyBoardService rbs;
	@Autowired
	private BoardService bs;
	@RequestMapping("/sList/bno/{bno}")
	public String sList(@PathVariable("bno") int bno, Model model) {
		List<ReplyBoard> sList = rbs.list(bno);
		Board board = bs.select(bno);
		model.addAttribute("sList", sList);
		model.addAttribute("board", board);
		return "reply/sList";
	}
	@RequestMapping("/rInsert")
	public String rInsert(ReplyBoard rb,Model model) {
		rbs.insert(rb);
		return "redirect:sList/bno/"+rb.getBno();
	}
	@RequestMapping("/rDelete") 
	public String rDelete(ReplyBoard rb, Model model) {
		rbs.delete(rb.getRno());
		return "redirect:sList/bno/"+rb.getBno();
	} 
	@RequestMapping("/rUpdate") 
	public String rUpdate(ReplyBoard rb, Model model) {
		rbs.update(rb);
		return "redirect:sList/bno/"+rb.getBno();
	} 
}