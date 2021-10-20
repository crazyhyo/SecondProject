
<%@page import="kr.or.ddit.hr.vo.HRVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HRVO> list = (List<HRVO>) request.getAttribute("hrCardPagingList");
%>

[

	<%
	for(int i = 0; i < list.size(); i++){
		if(i > 0){
			out.print(",");
		}
		HRVO vo = list.get(i);
	}	


	
	
	
	
	
	
	
	
%>




]


