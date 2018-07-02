package com.project.together.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.together.board.TBoard;
import com.project.together.board.PagingPgm;
import com.project.together.board.TBoardService;
import com.project.together.member.MbService;
import com.project.together.member.Member;

@Controller
public class TBoardController {
	@Autowired
	private TBoardService tbs;
	@Autowired
	private MbService mbs;

	// --------------- 자유게시판 해당 페이지 리스트 ---------------
	@RequestMapping("freeBoardList")
	public String freeBoardList(String pageNum, TBoard tboard, Model model2, HttpSession session) {
		int result = 0;
		//페이징 실행 및 리스트출력
		Model model = paging(pageNum,tboard,model2);
		
		//로그인 상태 체크
		if(session.getAttribute("id") != null) { result = 1; }
		model.addAttribute("result", result);
			
		return "board/freeBoardList";
	}
	
	//레플리카(나중에 변경예정)===================================================================================
		@RequestMapping("testfreeBoardList")
		public String testfreeBoardList(String pageNum, TBoard tboard, Model model2, HttpSession session) {
			int result = 0;
			//페이징 실행 및 리스트출력
			Model model = paging(pageNum,tboard,model2);
			
			//로그인 상태 체크
			if(session.getAttribute("id") == null) { result = 0; }
			else { result = 1; }
			model.addAttribute("result", result);
				
			
			return "board/testfreeBoardList";
		}

	// --------------------- 글 작성 폼 -----------------------
	@RequestMapping("tboardInsertForm")
	public String tboardInsertForm(String nm, String pageNum, Model model) {
		int t_num = 0, ref = 0, re_level = 0, re_step = 0, result = 1;
		if (nm != null) {//답글인가?
			t_num = Integer.parseInt(nm);
			TBoard tboard = tbs.select(t_num);//ref가(답글이) 달릴 원본 글 번호
			ref = tboard.getRef();
			re_level = tboard.getRe_level();
			re_step = tboard.getRe_step();
		}
		model.addAttribute("t_num", t_num);
		model.addAttribute("ref", ref);
		model.addAttribute("re_level", re_level);
		model.addAttribute("re_step", re_step);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("result", result);

		return "board/tboardInsertForm";
	}
	// ------------------- 실제 글작성부분 ---------------------
	@RequestMapping("insert")
	public String insert(String pageNum,TBoard tboard, Model model, HttpServletRequest request, HttpSession session) {
			int mb_num = (Integer) session.getAttribute("mb_num");//로그인한 맴버
			String ip = request.getRemoteAddr();//글쓰는 위치(ip)주소
			
			int number = tbs.getMaxNum();//현재 게시물 수 +1
			if (tboard.getT_num() != 0) {//해당 글이 답글이냐 아니냐 체크
				tbs.updateRe_step(tboard);
				tboard.setRe_level(tboard.getRe_level() + 1);
				tboard.setRe_step(tboard.getRe_step() + 1);
			} else tboard.setRef(number);//신규 글이라면 해당 게시물 번호와 동일번호
			
			//현재 글쓰는사람과 그 글쓴이의 닉네임
			Member user = mbs.select(mb_num);
			int ck_mb_num = user.getMb_num();
			String nick_name = user.getNick_name();
			//
			
			tboard.setT_num(number);//생성되는 글의 등록 번호 셋팅(T_num은 자동증가 아님)
			
			tboard.setMb_num(ck_mb_num);
			tboard.setNick_name(nick_name);
			tboard.setIp(ip);
			int result = tbs.insert(tboard);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("result", result);//정상적으로 글이 작성됫는지 확인
			
		return "board/insert";
	}
	// --------------------- 게시글 상세 ----------------------
	@RequestMapping("tboardView")
	public String tboardView(String pageNum, int t_num, Model model, HttpSession session) {
		tbs.updateReadCount(t_num);//해당 게시물의 조회수 증가
		int result = 0;
		TBoard tboard = tbs.select(t_num);//게시물 조회
		
		//로그인 체크
		if((Integer) session.getAttribute("mb_num")==null) {//로그인하지 않았으면 조회만 가능하게
			result = 0;
		}else {
			int sess_mb_num = (Integer) session.getAttribute("mb_num");
			if(tboard.getMb_num() == sess_mb_num) {//로그인한 사람과 글쓴이가 같다면 수정삭제 가능하게
				result = 2;
			}else{//로그인은 했으나 글쓴이와 다르면 답글만 가능하게
				result = 1;
			}
		}
		
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("tboard", tboard);
		model.addAttribute("result", result);
		
		return "board/tboardView";
	}
	// ------------------------ 수정 ------------------------
	@RequestMapping("updateForm")
	public String updateForm(int num, String pageNum, Model model) {
		TBoard tboard = tbs.select(num);
		model.addAttribute("tboard", tboard);
		model.addAttribute("pageNum", pageNum);
		return "board/updateForm";
	}
	@RequestMapping("update")
	public String update(TBoard tboard, String pageNum, Model model) {
		int result = tbs.update(tboard);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "board/update";
	}
	// ------------------------ 삭제 ------------------------
	@RequestMapping("delete")
	public String delete(int num, String pageNum, Model model) {
		int result = tbs.delete(num);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "board/delete";
	}
	// ----------------------- 페이징 ------------------------
	public Model paging(String pageNum, TBoard tboard, Model model2) {
		final int rowPerPage = 10;
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;

		tboard.setStartRow(startRow);
		tboard.setEndRow(endRow);
		
		//해당 패이지의 리스트 출력 실행
		Model model = tlist(tboard, model2);

		int total = tbs.getTotal(tboard);
		PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);
		int no = total - startRow + 1;

		model.addAttribute("pageNum", pageNum);
		model.addAttribute("no", no);
		model.addAttribute("pp", pp);
		return model;
	}
	// ----------------------- 리스트 ------------------------
	public Model tlist(TBoard tboard,Model model) {
		//해당 페이지의 리스트 출력
		List<TBoard> lists = tbs.getList(tboard);
		
		model.addAttribute("list", lists);
		
		String[] ops = {"제목","작성자","내용","제목+내용"};
		model.addAttribute("search", tboard.getSearch());
		model.addAttribute("keyword", tboard.getKeyword());
		model.addAttribute("ops", ops);
		return model;
	}
}