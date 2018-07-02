package com.ch.ch10;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.ch10.model.Board;
import com.ch.ch10.service.BoardService;
import com.ch.ch10.service.PagingPgm;

@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	@RequestMapping("list")
	public String list(String pageNum, Board board, Model model) {
		int rowPerPage = 10;
		if (pageNum==null || pageNum.equals(""))
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int total = bs.total();
		PagingPgm pp = new PagingPgm(total,rowPerPage,currentPage);
		int no = total - startRow + 1;
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		// List<Board> list = bs.getList(startRow, endRow);
		List<Board> list = bs.getList(board);
		model.addAttribute("pp", pp);
		model.addAttribute("no", no);
		model.addAttribute("list", list);
		return "list";
	}
	@RequestMapping("view")
	public String view(int num, String pageNum, Model model) {
		bs.updateReadCount(num);
		Board board = bs.select(num);
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		return "view";
	}

	@RequestMapping("insertForm.do")
	public String insertForm(String pageNum, Model model) {
		int num=0, ref=0, re_level=0, re_step=0;
		model.addAttribute("num", num);
		model.addAttribute("ref", ref);
		model.addAttribute("re_level", re_level);
		model.addAttribute("re_step", re_step);
		model.addAttribute("pageNum", pageNum);
		return "insertForm";
	}
	
	@RequestMapping("insert.do")
	public String insert(Board board, String pageNum, Model model, HttpServletRequest request) {
		String ip = request.getRemoteAddr();
		board.setIp(ip);
		int result = bs.insert(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "insert";
	}
	
}




