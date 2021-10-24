package kr.or.ddit.jobOpening.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.jobOpening.service.IJobOpeningService;
import kr.or.ddit.jobOpening.service.JobOpeningServiceImpl;
import kr.or.ddit.jobOpening.vo.JOCardVO;

@WebServlet("/JOCardDetil.do")
public class JOCardDetil extends HttpServlet{
	String prefix = "/WEB-INF/jsp/";
	String suffix = ".jsp";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Integer joNo = req.getParameter("joNo") == null ?
				0 : Integer.parseInt(req.getParameter("joNo"));
		
		IJobOpeningService jobOpeningService = JobOpeningServiceImpl.getInstance();
		
		joNo = 4;
		
		JOCardVO joCardDetail = jobOpeningService.joCardDetail(joNo);
		
		req.setAttribute("joCardDetail", joCardDetail);
		
		req.getRequestDispatcher(prefix + "JoDetail" + suffix).forward(req, resp);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}