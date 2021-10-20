package kr.or.ddit.hr.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.cmm.vo.HRPagingVO;
import kr.or.ddit.hr.service.HRServiceImpl;
import kr.or.ddit.hr.service.IHRService;
import kr.or.ddit.hr.vo.HRVO;

/**
 * Servlet implementation class HRCardPagingList
 */
@WebServlet("/HRCardPagingList.do")
public class HRCardPagingList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String prefix = "/WEB-INF/jsp/";
	String suffix = ".jsp";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HRCardPagingList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HRPagingVO hrPagingVO = new HRPagingVO();
		IHRService hrService = HRServiceImpl.getInstance();
		
		int currentPageNo = req.getParameter("currentPageNo") == null ? 
				0: Integer.parseInt(req.getParameter("curretPageNo"));
		int totalCount = hrService.getTotalHRCount();
		
		hrPagingVO.setCurrentPageNo(currentPageNo);
		hrPagingVO.setTotalCount(totalCount);
		
		List<HRVO> hrCardPagingList = hrService.hrPagingList(hrPagingVO);
		req.setAttribute("hrCardPagingList", hrCardPagingList);
		req.getRequestDispatcher(prefix + "SShrCardPagingList"+suffix).forward(req, resp);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
