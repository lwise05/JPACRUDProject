package com.skilldistillery.cookie.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class CookieTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Cookie cookie;
	

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACookie");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em =emf.createEntityManager();
		cookie = em.find(Cookie.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		cookie=null;
		em.close();
	}

	@Test
	void test_Cookie_entity_mapping() {
		assertNotNull(cookie);
		assertEquals("milk chocolate chip", cookie.getName());	
	}

}
