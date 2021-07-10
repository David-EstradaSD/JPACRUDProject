package com.skilldistillery.jpachessmatches.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class ChessMatchTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private ChessMatch match;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	    emf = Persistence.createEntityManagerFactory("ChessMatches");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		match = em.find(ChessMatch.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		match = null;
	}

	@Test
	@DisplayName("testing chess match entity maps correctly")
	void test() {
		assertNotNull(match);
		assertEquals("Magnus Carlsen", match.getWhitePieces());
	}

}
