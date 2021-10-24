package kr.or.ddit.jobOpening.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import kr.or.ddit.jobOpening.service.IJobOpeningService;
import kr.or.ddit.jobOpening.service.JobOpeningServiceImpl;
import kr.or.ddit.jobOpening.vo.JobOpeningVO;
import kr.or.ddit.member.vo.MemberVO;

@WebServlet("/InsertJobOpeining.do")
public class InsertJobOpeining extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("UTF-8");
		
		IJobOpeningService jobOpeningService = JobOpeningServiceImpl.getInstance();
		
		JobOpeningVO vo = new JobOpeningVO();
		
		try {
			BeanUtils.populate(vo, req.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		HttpSession session = req.getSession();
		
		
		MemberVO loginMember = session.getAttribute("MemVO") == null?
				null : (MemberVO)session.getAttribute("MemVO");
		
		
		System.out.println(vo.getJoTitle());
		System.out.println(vo.getComNo());
		System.out.println(vo.getJoRank());
		System.out.println(vo.getJoSdate());
		System.out.println(vo.getJoEdate());
		System.out.println(vo.getCityCodeNo());
		System.out.println(vo.getJoLink());
		System.out.println(vo.getJoMthd());
		
		int result = jobOpeningService.insertJobOpening(vo);
		
		System.out.println("result : " + result);
		
		req.setAttribute("result", result);
		
		req.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
