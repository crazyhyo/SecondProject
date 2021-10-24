package kr.or.ddit.certification.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import kr.or.ddit.certification.service.CertServiceImpl;
import kr.or.ddit.certification.service.ICertService;
import kr.or.ddit.hr.service.HRServiceImpl;
import kr.or.ddit.hr.service.IHRService;
import kr.or.ddit.hr.vo.HRFavVO;
import kr.or.ddit.hr.vo.HRInfoVO;

/**
 * Servlet implementation class CertInsert
 */
@WebServlet("/CertInsert.do")
public class CertInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String prefix = "/WEB-INF/jsp/";
	String suffix = ".jsp";
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CertInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HRInfoVO hrInfoVO = new HRInfoVO();
		
		try {
			BeanUtils.populate(hrInfoVO, request.getParameterMap());
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		ICertService certService = CertServiceImpl.getInstance(); 
		
		int cnt = certService.insertCert(hrInfoVO);
		
		request.setAttribute("result", cnt);
		request.getRequestDispatcher(prefix+"SSsuccessCheck"+suffix).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
