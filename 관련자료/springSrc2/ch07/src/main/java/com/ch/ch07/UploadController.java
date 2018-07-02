package com.ch.ch07;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class UploadController {
	@RequestMapping("uploadForm")
	public String uploadForm() {
		return "uploadForm";
	}
	@RequestMapping("upload")
	public String upload(@RequestParam("file") MultipartFile mf,
			Model model, HttpSession session) throws IOException {
		String fileName = mf.getOriginalFilename();
		int size = (int)mf.getSize();
		String real = 
			session.getServletContext().getRealPath("/upload");
		FileOutputStream fos = 
				new FileOutputStream(new File(real+"/"+fileName));
		fos.write(mf.getBytes());
		fos.close();
		model.addAttribute("fileName", fileName);
		model.addAttribute("size", size);
		return "upload";
	}
	@RequestMapping("loginForm")
	public String loginForm() {
		return "loginForm";
	}
	@RequestMapping("login")
	public String login(String id, String pass, HttpSession session,
			Model model) {
		if (id.equals("spring") && pass.equals("1234")) {
			session.setAttribute("id", id);
			model.addAttribute("id", id);
		}
		return "login";
	}
}