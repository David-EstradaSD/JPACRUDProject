package com.skilldistillery.jpachessmatches.data;

import com.skilldistillery.jpachessmatches.entities.ChessMatch;

public interface ChessMatchDAO {
	
	ChessMatch findById(int id);

}
