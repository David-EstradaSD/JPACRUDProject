package com.skilldistillery.jpachessmatches.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "chess_match") 
public class ChessMatch {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "white_pieces")
	private String whitePieces; // player's full name
	@Column(name = "black_pieces")
	private String blackPieces; // player's full name
	private String winner; // white or black
	private String opening; // so many different openings...
	private String result; // resignation, timeout, checkmate or draw 
	private LocalDate date; // YYYY-MM-DD format 

	public ChessMatch() {
		super();
	}

	public ChessMatch(int id, String whitePieces, String blackPieces, String winner, String opening, String result,
			LocalDate date) {
		super();
		this.id = id;
		this.whitePieces = whitePieces;
		this.blackPieces = blackPieces;
		this.winner = winner;
		this.opening = opening;
		this.result = result;
		this.date = date;
	}

	@Override
	public String toString() {
		return "ChessMatch [id=" + id + ", whitePieces=" + whitePieces + ", blackPieces=" + blackPieces + ", winner="
				+ winner + ", opening=" + opening + ", result=" + result + ", date=" + date + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWhitePieces() {
		return whitePieces;
	}

	public void setWhitePieces(String whitePieces) {
		this.whitePieces = whitePieces;
	}

	public String getBlackPieces() {
		return blackPieces;
	}

	public void setBlackPieces(String blackPieces) {
		this.blackPieces = blackPieces;
	}

	public String getWinner() {
		return winner;
	}

	public void setWinner(String winner) {
		this.winner = winner;
	}

	public String getOpening() {
		return opening;
	}

	public void setOpening(String opening) {
		this.opening = opening;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

}
