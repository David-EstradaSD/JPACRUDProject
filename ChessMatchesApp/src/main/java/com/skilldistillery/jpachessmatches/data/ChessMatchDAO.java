package com.skilldistillery.jpachessmatches.data;

import java.util.List;

import com.skilldistillery.jpachessmatches.entities.ChessMatch;

public interface ChessMatchDAO {
	
	public ChessMatch findChessMatchById(int id);
	
//	TODO: Fix this method in the DAOIMPL and Controller
//	public List<ChessMatch> findChessMatchByPlayerName(String name);
	
	public List<ChessMatch> listAllChessMatches();
	
	public ChessMatch createChessMatch(ChessMatch match);
	
	public ChessMatch updateChessMatch(ChessMatch match);
	
	public boolean deleteChessMatch(int id);


}
