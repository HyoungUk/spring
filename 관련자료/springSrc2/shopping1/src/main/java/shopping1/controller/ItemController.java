package shopping1.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import shopping1.model.Item;
import shopping1.service.ItemService;
public class ItemController implements Controller {
	@Autowired
	private ItemService is;
	public ModelAndView handleRequest(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		List<Item> list = is.list();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("/WEB-INF/views/list.jsp");
		return mav;
	}
}