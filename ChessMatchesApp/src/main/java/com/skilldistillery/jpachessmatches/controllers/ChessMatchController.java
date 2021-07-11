package com.skilldistillery.jpachessmatches.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpachessmatches.data.ChessMatchDAO;
import com.skilldistillery.jpachessmatches.entities.ChessMatch;

@Controller
public class ChessMatchController {
	
	@Autowired
	private ChessMatchDAO dao;
	
	@RequestMapping(path = "home.do") // this method maps to our root home page of our application 
	public String index() {
		return "index"; // ViewResolver is added in the application.properties file 
	}
	
	@RequestMapping(path = "mainResult.do", method = RequestMethod.GET)
	public String individualResult() {
		return "mainResult";
	}
	
	@RequestMapping(path = "resultList.do", method = RequestMethod.GET)
	public String resultList() {
		return "resultList";
	}
	
	@RequestMapping(path = "added.do", method = RequestMethod.GET)
	public String addedPage() {
		return "added";
	}
	
	@RequestMapping(path = "updated.do", method = RequestMethod.GET)
	public String updatedPage() {
		return "updated";
	}
	
	@RequestMapping(path = "deleted.do", method = RequestMethod.GET)
	public String deletedPage() {
		return "deleted";
	}
	
	@RequestMapping(path = "findMatchById.do", method = RequestMethod.GET)
	public String findMatchById(Integer id, Model model) {
		model.addAttribute("match", dao.findChessMatchById(id));
		return "mainResult";
	}
	
//	TODO: FIX THIS METHOD !!
//	@RequestMapping(path = "findMatchByPlayer.do", method = RequestMethod.GET)
//	public String findMatchByPlayer(String name, Model model) {
//		model.addAttribute("matches", dao.findChessMatchByPlayerName(name));
//		return "resultList";
//	}
	
	@RequestMapping(path = "listAllMatches.do", method = RequestMethod.GET)
	public String listAllMatches(Model model) {
		model.addAttribute("matches", dao.listAllChessMatches());
		return "resultList";
	}
	
	@RequestMapping(path = "newMatch.do", method = RequestMethod.POST)
	public String createMatch(ChessMatch match, RedirectAttributes redir) {
	    dao.createChessMatch(match);
		redir.addFlashAttribute("match", match); // command object called all the setters and getters to construct a Match entity
		return "redirect:matchAdded.do"; // redirect to a GET to add the new Match into the DB
	}
	
	  @RequestMapping(path = "matchAdded.do", method = RequestMethod.GET) 
	  public String matchAdded(ChessMatch match) { 
	   	return "added";
	  }
	
	@RequestMapping(path = "updateMatch.do", method = RequestMethod.POST)
	public String updateMatch(ChessMatch match, RedirectAttributes redir) {
		dao.updateChessMatch(match);
		redir.addFlashAttribute("match", match);
		return "redirect:matchUpdated.do";
	}
	
	@RequestMapping(path = "matchUpdated.do", method = RequestMethod.GET) 
	public String matchUpdated(ChessMatch match) { 
		return "updated";
	}
	
	@RequestMapping(path = "deleteMatch.do", method = RequestMethod.POST)
	public String deleteMatch(int id, RedirectAttributes redir) {
		boolean deleted = dao.deleteChessMatch(id);
		if (deleted == true) {
			return "redirect:matchDeleted.do";
		} else {
			return "redirect:matchDeleted.do";
		}
	}
	
}
