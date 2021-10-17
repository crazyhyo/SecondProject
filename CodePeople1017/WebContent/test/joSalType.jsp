<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Integer> list = (List<Integer>) request.getAttribute("list");
%>

[
	
<%
	for(int i = 0; i < list.size(); i++){
		if(i > 0){
			out.print(",");
		}
		int salTypeNo = list.get(i);
		String salTypeNm = "";
		
		switch(salTypeNo){
		case 0:
			salTypeNm = "정보없음";
			break;
		case 1:
			salTypeNm = "~ 2000만원";
			break;
		case 2:
			salTypeNm = "2000만원 ~ 2500만원";
			break;
		case 3:
			salTypeNm = "2500만원 ~ 3000만원";
			break;
		case 4:
			salTypeNm = "3000만원 ~ 4000만원";
			break;
		case 5:
			salTypeNm = "4000만원 ~ 5000만원";
			break;
		case 6:
			salTypeNm = "5000만원 ~";
			break;
		default:
			salTypeNm = "설정 안됨";
			break;
		}
		
%>

		
			{	
				"salTypeNo" : "<%=salTypeNo %>",
				"salTypeNm" : "<%= salTypeNm%>"
			}

		
<%		
		
	}
%>

]

    