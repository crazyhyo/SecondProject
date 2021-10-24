package kr.or.ddit.board.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.ReplyVO;
import kr.or.ddit.cmm.vo.BoardPagingVO;

public interface IBoardDao {
	
	public int getTotalBoardCount() throws SQLException;
	
	public List<BoardVO> boardPagingList(BoardPagingVO boardPagingVO) throws SQLException;
	
	//占쏙옙체 占쏙옙占쏙옙트
	public List<Map<String, Object>> selectAll() throws SQLException;
	
	//占쌜억옙占쏙옙 
	public int boardInsert(BoardVO vo) throws SQLException;
	
	//占쌜쇽옙占쏙옙
	public int boardUpdate(BoardVO vo) throws SQLException;
	
	//占쌜삼옙占쏙옙
	public int boardDelete(BoardVO vo) throws SQLException;
	
	//占쏙옙占� 占쏙옙占쏙옙트
	public List<Map<String, Object>> replySelect() throws SQLException;
	
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
	
	public int replyInsert(ReplyVO vo) throws SQLException;
	
	public int checkBoardRight(BoardVO vo) throws SQLException;
	
	public int checkReplyRight(ReplyVO vo) throws SQLException;
	
	public int replyUpdate(ReplyVO vo) throws SQLException;
	
	public int replyDelete(int vo) throws SQLException;
	
	public int addBoardHit(BoardVO vo) throws SQLException;
	
	public int addBoardRept(BoardVO vo) throws SQLException;
	
	public int addBoardLike(BoardVO vo) throws SQLException;
	
	public int addReplyRept(int repNo) throws SQLException;
	
	public int addReplyLike(int repNo) throws SQLException;
}
