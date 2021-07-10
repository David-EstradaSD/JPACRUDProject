package com.skilldistillery.jpachessmatches.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpachessmatches.entities.ChessMatch;

@Service
@Transactional
public class ChessMatchDAOImpl implements ChessMatchDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public ChessMatch findById(int id) {
		
		
		return em.find(ChessMatch.class, id);
	}

}
