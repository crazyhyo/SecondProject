<%@page import="kr.or.ddit.jobOpening.vo.JobOpeningVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<JobOpeningVO> list = (List<JobOpeningVO>) request.getAttribute("list");
%>

[
	
<%
	for(int i = 0; i < list.size(); i++){
		if(i > 0){
			out.print(",");
		}
		JobOpeningVO vo = list.get(i);
		int jo_no = vo.getJo_no();
		String jo_title = vo.getJo_title();
		int com_no = vo.getCom_no();
		String jo_sdate = vo.getJo_sdate();
		String jo_edate = vo.getJo_edate();
		int jg_code_no = vo.getJg_code_no();
		int jt_code_no = vo.getJt_code_no();
		int jo_sal = vo.getJo_sal();
		String jo_rank = vo.getJo_rank();
		String jo_mthd = vo.getJo_mthd();
		String jo_link = vo.getJo_link();
		int jo_clip = vo.getJo_clip();
		int jo_file = vo.getJo_file();
		int jo_zipcode = vo.getJo_zipcode();
		String jo_addr1 = vo.getJo_addr1();
		String jo_addr2 = vo.getJo_addr2();
		int pl_code_no = vo.getPl_code_no();
%>

		
			{	
				"jo_no" : "<%=jo_no%>",
				"jo_title" : "<%=jo_title%>",
				"com_no" : "<%=com_no%>",
				"jo_sdate" : "<%=jo_sdate%>",
				"jo_edate" : "<%=jo_edate%>",
				"jg_code_no" : "<%=jg_code_no%>",
				"jt_code_no" : "<%=jt_code_no%>",
				"jo_sal" : "<%=jo_sal%>",
				"jo_rank" : "<%=jo_rank%>",
				"jo_mthd" : "<%=jo_mthd%>",
				"jo_link" : "<%=jo_link%>",
				"jo_clip" : "<%=jo_clip%>",
				"jo_file" : "<%=jo_file%>",
				"jo_zipcode" : "<%=jo_zipcode%>",
				"jo_addr1" : "<%=jo_addr1%>",
				"jo_addr2" : "<%=jo_addr2%>",
				"pl_code_no" : "<%=pl_code_no%>"
			}

		
<%		
		
	}
%>

]
