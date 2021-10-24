package kr.or.ddit.progLang.controller;

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
import kr.or.ddit.hr.vo.HRInfoVO;
import kr.or.ddit.progLang.dao.ProgLangDaoImpl;
import kr.or.ddit.progLang.service.IProgLangService;
import kr.or.ddit.progLang.service.ProgLangServiceImpl;

/**
 * Servlet implementation class PlInsert
 */
@WebServlet("/PlInsert.do")
public class PlInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String prefix = "/WEB-INF/jsp/";
	String suffix = ".jsp"; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlInsert() {
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
		
		IProgLangService plService = ProgLangServiceImpl.getInstance();
		
		int cnt = plService.insertPl(hrInfoVO);
		
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
