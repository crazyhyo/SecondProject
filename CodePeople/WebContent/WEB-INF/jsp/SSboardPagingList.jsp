<%@page import="kr.or.ddit.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<BoardVO> list = (List<BoardVO>) request.getAttribute("boardPagingList");
%>

[
	
<%
	for(int i = 0; i < list.size(); i++){
		if(i > 0){
			out.print(",");
		}
		BoardVO vo = list.get(i);
		
		Integer boardNo = vo.getBoardNo();
		Integer boardCodeNo = vo.getBoardCodeNo();
		String boardTitle = vo.getBoardTitle();
		String boardCont = vo.getBoardCont();
		Integer memNo = vo.getMemNo();
		Integer boardHit = vo.getBoardHit();
		Integer boardRept = vo.getBoardRept();
		Integer boardLike = vo.getBoardLike();
		Integer boardRepl = vo.getBoardRepl();
		Integer boardPop = vo.getBoardPop();
		String boardDate = vo.getBoardDate();
		Integer boardActive = vo.getBoardActive();
		String boardHead = vo.getBoardHead();
		Integer atchFileId = vo.getAtchFileId();
		
%>

		
			{	
				"boardNo" : "<%=boardNo%>",
				"boardCodeNo" : "<%=boardCodeNo%>",
				"boardTitle" : "<%=boardTitle%>",
				"boardCont" : "<%=boardCont%>",
				"memNo" : "<%=memNo%>",
				"boardHit" : "<%=boardHit%>",
				"boardRept" : "<%=boardRept%>",
				"boardLike" : "<%=boardLike%>",
				"boardRepl" : "<%=boardRepl%>",
				"boardPop" : "<%=boardPop%>",
				"boardDate" : "<%=boardDate%>",
				"boardActive" : "<%=boardActive%>",
				"boardHead" : "<%=boardHead%>",
				"atchFileId" : "<%=atchFileId%>"
			}

		
<%		
		
	}
%>

]