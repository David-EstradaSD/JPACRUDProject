package com.skilldistillery.jpachessmatches.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpachessmatches.data.ChessMatchDAO;

@Controller
public class ChessMatchController {
	
	@Autowired
	private ChessMatchDAO dao;
	
	@RequestMapping(path = "/") // this method maps to our root home page of our application 
	public String index() {
		return "index"; // ViewResolver is added in the application.properties file 
	}
	
	@RequestMapping(path = "getChessMatch.do")
	public String showMatch(Integer id, Model model) {
		model.addAttribute("film", dao.findById(id));
		return "match/show";
	}

}
