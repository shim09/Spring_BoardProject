package com.icia.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.board.dto.BoardDTO;
import com.icia.board.repository.BoardRepository;

@Service

public class BoardService {

	@Autowired
	private BoardRepository br;
	
	public int insert(BoardDTO board) {
		int result = br.insert(board);
		System.out.println("BoardService.insert() 메서드 호출");
		System.out.println(board);
		return result;
	}

	public List<BoardDTO> findAll() {
		List<BoardDTO> bList = br.findAll();
		return bList;
	}

	public BoardDTO findById(long b_number) {
		BoardDTO board = br.findById(b_number);
		return board;
	}
}
