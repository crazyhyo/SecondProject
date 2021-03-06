package kr.or.ddit.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.board.service.BoardServiceImpl;
import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.cmm.vo.BoardPagingVO;

@WebServlet("/BoardPagingList2.do")
public class BoardPagingList2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BoardPagingVO boardPagingVO = new BoardPagingVO();
		
		int currentPageNo = req.getParameter("currentPageNo") == null ?
				0 : Integer.parseInt(req.getParameter("currentPageNo"));
		
		IBoardService boardService = BoardServiceImpl.getInstance();
		
		int totalCount = boardService.getTotalBoardCount();
		
		boardPagingVO.setCurrentPageNo(currentPageNo);
		
		boardPagingVO.setTotalCount(totalCount);
		
		List<BoardVO> boardPagingList = boardService.boardPagingList(boardPagingVO);
		
		req.setAttribute("boardPagingList", boardPagingList);
		
		req.getRequestDispatcher("/WEB-INF/jsp/boardPagingList.jsp").forward(req, resp);
		
		
	}
}
