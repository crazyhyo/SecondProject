package kr.or.ddit.board.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.cmm.vo.BoardPagingVO;

public interface IBoardDao {
	
	public int getTotalBoardCount() throws SQLException;
	
	public List<BoardVO> boardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	//��ü ����Ʈ
	public List<Map<String, Object>> selectAll() throws SQLException;
	
	//�۾��� 
	public int boardInsert(BoardVO vo) throws SQLException;

	public List<Map<String, Object>> QuestionBoardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	public int countQuestionBoard() throws SQLException;
	public List<Map<String, Object>> LifeBoardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	public int countLifeBoard() throws SQLException;
	public List<Map<String, Object>> blahBoardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	public int countBlahBoard() throws SQLException;
	public List<Map<String, Object>> MeetUpBoardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	public int countMeetUpBoard() throws SQLException;
	public List<Map<String, Object>> CareerBoardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	public int countCareerBoard() throws SQLException;
}
