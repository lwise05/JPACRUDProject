package com.skilldistillery.cookie.data;

import java.util.List;

import com.skilldistillery.cookie.entities.Cookie;

public interface CookieDAO {

	List<Cookie> findAll();
	Cookie findById(int cookieId);
	Cookie create(Cookie newCookie);
	Cookie update(int cookieId, Cookie cookieToUpdate);
	boolean deleteById(int cookieId);
	//search by keyword
	//seeach by rating
}
