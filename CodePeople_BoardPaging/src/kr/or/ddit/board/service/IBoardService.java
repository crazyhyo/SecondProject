package kr.or.ddit.board.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.cmm.vo.BoardPagingVO;

public interface IBoardService {
	
	public int getTotalBoardCount();
	
	public List<BoardVO> boardPagingList(BoardPagingVO boardPagingVO);
	
	//��ü ����Ʈ
	public List<Map<String, Object>> selectAll();
	
	//�۾���
	public int boardInsert(BoardVO vo);
	
	
	public List<Map<String, Object>> QuestionBoardPagingList(BoardPagingVO boardPagingVO);
	
	public int countQuestionBoard();
	public List<Map<String, Object>> LifeBoardPagingList(BoardPagingVO boardPagingVO);
	
	public int countLifeBoard();
	public List<Map<String, Object>> blahBoardPagingList(BoardPagingVO boardPagingVO);
	
	public int countBlahBoard();
	public List<Map<String, Object>> MeetUpBoardPagingList(BoardPagingVO boardPagingVO);
	
	public int countMeetUpBoard();
	public List<Map<String, Object>> CareerBoardPagingList(BoardPagingVO boardPagingVO);
	
	public int countCareerBoard();
}
