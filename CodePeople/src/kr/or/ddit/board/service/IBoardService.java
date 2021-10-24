package kr.or.ddit.board.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.ReplyVO;
import kr.or.ddit.cmm.vo.BoardPagingVO;

public interface IBoardService {
	
	public int getTotalBoardCount();
	
	public List<BoardVO> boardPagingList(BoardPagingVO boardPagingVO);
	
	//占쏙옙체 占쏙옙占쏙옙트
	public List<Map<String, Object>> selectAll();
	
	//占쌜억옙占쏙옙
	public int boardInsert(BoardVO vo);
	
	//占쌜쇽옙占쏙옙
	public int boardUpdate(BoardVO vo);
	
	//占쌜삼옙占쏙옙
	public int boardDelete(BoardVO vo);
	
	//占쏙옙占� 占쏙옙占쏙옙트
	public List<Map<String, Object>> replySelect();
	
	//占쏙옙占쏙옙蒡占�
	public int replyInsert(ReplyVO vo);
	
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
	
	public int checkBoardRight(BoardVO vo);
	
	public int checkReplyRight(ReplyVO vo);
	
	public int replyUpdate(ReplyVO vo);
	
	public int replyDelete(int repNo);
	
	public int addBoardHit(BoardVO vo);
	
	public int addBoardRept(BoardVO vo);
	
	public int addBoardLike(BoardVO vo);
	
	public int addReplyRept(int repNo);
	
	public int addReplyLike(int repNo);
	
	
}
