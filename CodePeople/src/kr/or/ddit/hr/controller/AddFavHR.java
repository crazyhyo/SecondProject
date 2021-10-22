package kr.or.ddit.hr.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import kr.or.ddit.hr.dao.IHRDao;
import kr.or.ddit.hr.service.HRServiceImpl;
import kr.or.ddit.hr.service.IHRService;
import kr.or.ddit.hr.vo.HRFavVO;
import kr.or.ddit.hr.vo.HRSearchVO;

/**
 * Servlet implementation class AddFavHR
 */
@WebServlet("/AddFavHR.do")
public class AddFavHR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	String prefix = "/WEB-INF/jsp/";
	String suffix = ".jsp";
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFavHR() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HRFavVO hrFavVO = new HRFavVO();
		
		try {
			BeanUtils.populate(hrFavVO, req.getParameterMap());
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		IHRService hrService = HRServiceImpl.getInstance();
		
		int cnt = hrService.addFavHr(hrFavVO);
	
		req.setAttribute("result", cnt);
		req.getRequestDispatcher(prefix+"SSsuccessCheck"+suffix).forward(req, resp);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
