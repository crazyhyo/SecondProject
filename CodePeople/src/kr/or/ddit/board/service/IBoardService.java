package kr.or.ddit.board.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.cmm.vo.BoardPagingVO;

public interface IBoardService {
	
	public int getTotalBoardCount();
	
	public List<BoardVO> boardPagingList(BoardPagingVO boardPagingVO);
	
	//전체 리스트
	public List<Map<String, Object>> selectAll();
	
	//글쓰기
	public int boardInsert(BoardVO vo);
}
