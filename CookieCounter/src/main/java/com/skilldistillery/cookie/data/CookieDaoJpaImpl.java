package com.skilldistillery.cookie.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.cookie.entities.Cookie;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class CookieDaoJpaImpl implements CookieDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Cookie> findAll() {
		String jpql = "SELECT c FROM Cookie c";
		List<Cookie> cookies = em.createQuery(jpql, Cookie.class).getResultList();
		return cookies;
	}

	@Override
	public Cookie findById(int cookieId) {
		return em.find(Cookie.class, cookieId);
	}

	@Override
	public Cookie create(Cookie newCookie) {
		em.persist(newCookie);
		return newCookie;
	}

	@Override
	public Cookie update(int cookieId, Cookie cookieToUpdate) {
		Cookie cookie = em.find(Cookie.class, cookieId);
		cookie.setName(cookieToUpdate.getName());
		cookie.setDescription(cookieToUpdate.getDescription());
		cookie.setRating(cookieToUpdate.getRating());
		cookie.setLastDateAte(cookieToUpdate.getLastDateAte());
		cookie.setCookieImage(cookieToUpdate.getCookieImage());
		em.persist(cookie);
		return cookie;
	}

	@Override
	public boolean deleteById(int cookieId) {
		Cookie cookie = em.find(Cookie.class, cookieId);
		try {
			em.remove(cookie);
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
