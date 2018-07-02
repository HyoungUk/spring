package com.ch.board.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.board.model.Board;
import com.ch.board.service.BoardService;
import com.ch.board.service.PagingBean;
@Controller
public class BoardController {
	private final int ROWPERPAGE = 10;
	@Autowired
	private BoardService bs;
	@RequestMapping("/list")
	public String initList() {
		return "forward:list/pageNum/1";
		// return "redirect:list/pageNum/1";
	}
	@RequestMapping("/list/pageNum/{pageNum}")	
	public String list(@PathVariable("pageNum") String pageNum,
			Board board, Model model) {
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * ROWPERPAGE + 1;
		int endRow = startRow + ROWPERPAGE - 1;
		// 검색으로 수정 원레 bs.getTotal()
		int total = bs.getTotal(board); 
		PagingBean pb = new PagingBean(total, currentPage, ROWPERPAGE);
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		// List<Board> list = bs.list(startRow, endRow);
		List<Board> list = bs.list(board);
		// 검색으로 수정 원레 bs.getTotal() => total
		total = total - startRow + 1; 
		model.addAttribute("pb", pb);
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("pageNum", pageNum);
		// 검색용
		String[] sh = {"제목","내용","작성자","제목+내용"};
		model.addAttribute("sh", sh);
		model.addAttribute("search", board.getSearch());
		model.addAttribute("keyword", board.getKeyword());
		return "list";
	}
	@RequestMapping("/writeForm/pageNum/{pageNum}")
	public String writeForm(@PathVariable("pageNum") String pageNum,
			String nm,Model model) {
		int ref = 0, re_level = 0, re_step = 0, num = 0;
		if (nm != null) {
			num = Integer.parseInt(nm);
			Board board = bs.select(num);
			ref = board.getRef();
			re_level = board.getRe_level();
			re_step  = board.getRe_step();
		}
		model.addAttribute("ref", ref);
		model.addAttribute("re_level", re_level);
		model.addAttribute("re_step", re_step);
		model.addAttribute("num", num);
		model.addAttribute("pageNum", pageNum);
		return "writeForm";
	}
	@RequestMapping("/write")
	public String write(Board board, String pageNum, Model model,
			HttpServletRequest request) {
		int number = bs.getNewNum();
		// 답변글
		if (board.getNum() != 0) {
			bs.re_stepUpdate(board);
			board.setRe_level(board.getRe_level()+1);
			board.setRe_step(board.getRe_step()+1);
		} else board.setRef(number);
		// 답변글 끝
		board.setNum(number);
		String ip = request.getRemoteAddr();
		board.setIp(ip);
		int result = bs.insert(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "write";
	}
	@RequestMapping("/view/num/{num}/pageNum/{pageNum}")
	public String view(@PathVariable("num") int num,
			@PathVariable("pageNum") String pageNum,Model model){
		bs.updateReadCount(num);
		Board board = bs.select(num);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "view";
	}
	@RequestMapping("/deleteForm/num/{num}/pageNum/{pageNum}")
	public String deleteForm(@PathVariable("num") int num,
		 @PathVariable("pageNum") String pageNum, Model model) {
		Board board = bs.select(num);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "deleteForm";
	}
	@RequestMapping("/delete")
	public String delete(int num, String pageNum, Model model) {
		int result = bs.delete(num);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "delete";
	}
	@RequestMapping("/updateForm/num/{num}/pageNum/{pageNum}")
	public String updateForm(@PathVariable("num") int num,
		 @PathVariable("pageNum") String pageNum, Model model) {
		Board board = bs.select(num);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "updateForm";
	}
	@RequestMapping("/update")
	public String update(Board board, String pageNum, Model model) {
		int result = bs.update(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("board", board);
		return "update";
	}
}