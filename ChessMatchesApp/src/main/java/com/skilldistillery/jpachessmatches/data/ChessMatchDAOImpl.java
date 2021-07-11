package com.skilldistillery.jpachessmatches.data;

import java.time.format.DateTimeFormatter;
import java.util.List;

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
	public ChessMatch findChessMatchById(int id) {
		return em.find(ChessMatch.class, id);
	}
	
// TODO: Figure out why this method is NOT populating correctly.
//	public List<ChessMatch> findChessMatchByPlayerName(String name) {
//		String jpql = "SELECT c FROM ChessMatch c WHERE whitePieces LIKE :player";
//		List<ChessMatch> list = em.createQuery(jpql, ChessMatch.class).setParameter("player", name).getResultList();
//		return list;
//	}

	public List<ChessMatch> listAllChessMatches() {
		String jpql = "SELECT cm FROM ChessMatch cm";
		List<ChessMatch> chessMatchesList = em.createQuery(jpql, ChessMatch.class).getResultList();
		return chessMatchesList;
	}

	@Override
	public ChessMatch createChessMatch(ChessMatch match) {
		em.persist(match);
		return match;
	}

	@Override
	public ChessMatch updateChessMatch(ChessMatch match) {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		ChessMatch dbMatch = em.find(ChessMatch.class, match.getId());
		dbMatch.setBlackPieces(match.getBlackPieces());
		dbMatch.setWhitePieces(match.getWhitePieces());
		dbMatch.setWinner(match.getWinner());
		dbMatch.setOpening(match.getOpening());
		dbMatch.setResult(match.getResult());
		dbMatch.setDate(match.getDate().format(format));
		return dbMatch;
	}

	@Override
	public boolean deleteChessMatch(int id) {
		ChessMatch deletedMatch = em.find(ChessMatch.class, id);
		if (em.contains(deletedMatch)) {
			em.remove(deletedMatch);
		}
		boolean successfulDeletion = !em.contains(deletedMatch);
		return successfulDeletion;
	}

}
