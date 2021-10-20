package kr.or.ddit.board.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.cmm.vo.BoardPagingVO;

public interface IBoardDao {
	
	public int getTotalBoardCount() throws SQLException;
	
	public List<BoardVO> boardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	//전체 리스트
	public List<Map<String, Object>> selectAll() throws SQLException;
	
	//글쓰기 
	public int boardInsert(BoardVO vo) throws SQLException;

}
