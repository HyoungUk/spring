package com.project.together.board_no;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.together.board.PagingPgm;
import com.project.together.board_no.TBoard_no;
import com.project.together.board_no.TBoard_no_Service;
import com.project.together.member.MbService;
import com.project.together.member.Member;

@Controller
public class TBoard_no_Controller {
	@Autowired
	private TBoard_no_Service tbs;

	@Autowired
	private MbService mbs;

	@RequestMapping("noticeBoardList")
	public String list(String pageNum, TBoard_no tboard_no, Model model, HttpSession session) {
		final int rowPerPage = 10;
		int result = 0;
		String manager = "n";
		if (
			session.getAttribute("id") != null) { result = 1;
			int n_num = (Integer) session.getAttribute("mb_num");
			Member member = mbs.select(n_num);
			manager = member.getManager();
		}
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int total = tbs.getTotal(tboard_no);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);
		int no = total - startRow + 1;
		tboard_no.setStartRow(startRow);
		tboard_no.setEndRow(endRow);
		
		// 리스트 출력
		List<TBoard_no> lists = tbs.getList(tboard_no);
		List<String> str = new ArrayList<String>();
		for (TBoard_no list : lists) {
			Member member = mbs.select(list.getMb_num());
			str.add(member.getNick_name());
		}
		model.addAttribute("str", str);
		model.addAttribute("list", lists);
		model.addAttribute("no", no);
		model.addAttribute("pp", pp);

		String[] ops = { "제목", "작성자", "내용", "제목+내용" };
		model.addAttribute("search", tboard_no.getSearch());
		model.addAttribute("manager", manager);
		model.addAttribute("keyword", tboard_no.getKeyword());
		model.addAttribute("ops", ops);
		model.addAttribute("result", result);
		
		return "board_no/noticeBoardList";
	}

	// -------------------- 글 입력 -----------------------
	@RequestMapping("insertForm_no")
	public String insertForm_no(String pageNum, Model model) {
		int n_num = 0, result = 1;
		model.addAttribute("n_num", n_num);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("result", result);

		return "board_no/insertForm_no";
	}

	@RequestMapping("insert_no")
	public String insert_no(TBoard_no tboard_no, Model model, HttpServletRequest request, HttpSession session) {
		int mb_num = (Integer) session.getAttribute("mb_num");
		int number = tbs.getMaxNum();

		Member user = mbs.select(mb_num);
		int ck_mb_num = user.getMb_num();
		String nick_name = user.getNick_name();

		tboard_no.setN_num(number);
		tboard_no.setMb_num(ck_mb_num);
		tboard_no.setNick_name(nick_name);
		int result = tbs.insert_no(tboard_no);
		model.addAttribute("result", result);

		return "board_no/insert_no";
	}

	// -------------------- 게시글 상세 -----------------------

	@RequestMapping("tboard_no_View")
	public String tboard_no_View(int n_num, String pageNum, Model model, HttpSession session) {
		tbs.updateReadCount(n_num);
		int result = 1;
		TBoard_no tboard_no = tbs.select(n_num);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("tboard_no", tboard_no);
		model.addAttribute("result", result);
		
		return "board_no/tboard_no_View";
	}

	// -------------------- 수정 -----------------

	@RequestMapping("updateForm_no")
	public String updateForm_no(int num, String pageNum, Model model) {
		TBoard_no tboard_no = tbs.select(num);
		model.addAttribute("tboard_no", tboard_no);
		model.addAttribute("pageNum", pageNum);
		return "board_no/updateForm_no";
	}

	@RequestMapping("update_no")
	public String update_no(TBoard_no tboard_no, Model model, HttpSession session) {
		System.out.println("num" + tboard_no.getN_num());
		int result = tbs.update_no(tboard_no);
		model.addAttribute("result", result);
		return "board_no/update_no";
	}

	@RequestMapping("delete_no")
	public String delete_no(int num, String pageNum, Model model) {
		int result = tbs.delete_no(num);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum); 
		return "board_no/delete_no";
	}
}