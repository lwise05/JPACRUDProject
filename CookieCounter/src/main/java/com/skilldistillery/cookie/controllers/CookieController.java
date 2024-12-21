package com.skilldistillery.cookie.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.cookie.data.CookieDAO;
import com.skilldistillery.cookie.entities.Cookie;

@Controller
public class CookieController {

	@Autowired
	private CookieDAO cookieDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		List<Cookie> cookieList = cookieDao.findAll();
		model.addAttribute("cookieList", cookieList);
		return "home";
	}

	@RequestMapping(path= "getCookie.do", method = RequestMethod.GET)
	public String showCookie(Model model, @RequestParam("cookieId") int cookieId) {
		Cookie cookie = cookieDao.findById(cookieId);
		model.addAttribute("cookieCrumb", cookie);
		return "show";
	}
	
	@RequestMapping(path="addCookie.do", method = RequestMethod.POST)
	public String createCookie(Model model, Cookie newCookie) {
		Cookie cookie = cookieDao.create(newCookie);
		model.addAttribute("newCookie", cookie);
		return "redirect:home.do";
	}
	
	
	
	
	
}
