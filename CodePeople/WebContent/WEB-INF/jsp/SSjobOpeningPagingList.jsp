<%@page import="kr.or.ddit.jobOpening.vo.JobOpeningVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<JobOpeningVO> list = (List<JobOpeningVO>) request.getAttribute("jobOpeningPagingList");
%>

[
	
<%
	for(int i = 0; i < list.size(); i++){
		if(i > 0){
			out.print(",");
		}
		JobOpeningVO vo = list.get(i);
		
		Integer joNo = vo.getJoNo();
		String joTitle = vo.getJoTitle();
		Integer comNo = vo.getComNo();
		String joSdate = vo.getJoSdate();
		String joEdate = vo.getJoEdate();
		Integer jgCodeNo = vo.getJgCodeNo();
		Integer jtCodeNo = vo.getJtCodeNo();
		Integer joSal = vo.getJoSal();
		String joRank = vo.getJoRank();
		String joMthd = vo.getJoMthd();
		String joLink = vo.getJoLink();
		Integer joClip = vo.getJoClip();
		Integer joFile = vo.getJoFile();
		Integer provCodeNo = vo.getProvCodeNo();
		Integer cityCodeNo = vo.getCityCodeNo();
		Integer plCodeNo = vo.getPlCodeNo();
		
%>

		
			{	
				"joNo" : "<%=joNo%>",
				"joTitle" : "<%=joTitle%>",
				"comNo" : "<%=comNo%>",
				"joSdate" : "<%=joSdate%>",
				"joEdate" : "<%=joEdate%>",
				"jgCodeNo" : "<%=jgCodeNo%>",
				"jtCodeNo" : "<%=jtCodeNo%>",
				"joSal" : "<%=joSal%>",
				"joRank" : "<%=joRank%>",
				"joMthd" : "<%=joMthd%>",
				"joLink" : "<%=joLink%>",
				"joClip" : "<%=joClip%>",
				"joFile" : "<%=joFile%>",
				"provCodeNo" : "<%=provCodeNo%>",
				"cityCodeNo" : "<%=cityCodeNo%>",
				"plCodeNo" : "<%=plCodeNo%>"
			}

		
<%		
		
	}
%>

]