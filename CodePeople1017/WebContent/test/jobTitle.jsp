<%@page import="kr.or.ddit.jobTitle.vo.JobTitleVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<JobTitleVO> list = (List<JobTitleVO>) request.getAttribute("list");
%>

[
	
<%
	for(int i = 0; i < list.size(); i++){
		if(i > 0){
			out.print(",");
		}
		JobTitleVO vo = list.get(i);
%>

		
			{	
				"jtCodeNo" : "<%=vo.getJt_code_no() %>",
				"jtCodeNm" : "<%=vo.getJt_code_nm() %>"
			}

		
<%		
		
	}
%>

]


    