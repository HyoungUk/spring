package shopping1.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import shopping1.model.Dept;
import shopping1.service.DeptService;
public class DeptController implements Controller {
	@Autowired
	private DeptService ds;
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		List<Dept> list = ds.list();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("/WEB-INF/views/deptList.jsp");
		return mav;
	}
}