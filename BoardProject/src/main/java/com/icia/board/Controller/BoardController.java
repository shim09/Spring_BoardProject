package com.icia.board.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/insertForm", method = RequestMethod.GET)
	public String insertForm() {
		return "insert";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute BoardDTO board) {
		
		System.out.println(board);
		int save = bs.insert(board);
		
		if(save >0) {
			return "redirect:/findAll";
		}else {
			return "insert";
		}
		
	}
	
	@RequestMapping(value="/findAll", method=RequestMethod.GET)
	public String findAll(Model model) {
		List<BoardDTO> bList = bs.findAll();
		model.addAttribute("bList",bList);
		return"findAll";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String findById(@RequestParam("b_number") long b_number, Model model) {
		BoardDTO board = bs.findById(b_number);
		model.addAttribute("board", board);
		return "detail";
	}
}
