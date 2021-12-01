package com.icia.board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.board.dto.BoardDTO;



@Repository
public class BoardRepository {

	@Autowired
	private SqlSessionTemplate sql;

	public int insert(BoardDTO board) {
		System.out.println(board);
		return sql.insert("board.insert", board);
	}

	public List<BoardDTO> findAll() {
		return sql.selectList("board.findAll");	}

	public BoardDTO findById(long b_number) {
		return sql.selectOne("board.findById", b_number);
	}

	
	
}
