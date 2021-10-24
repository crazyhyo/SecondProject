package kr.or.ddit.company.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import kr.or.ddit.company.service.CompanyServiceImpl;
import kr.or.ddit.company.service.ICompanyService;
import kr.or.ddit.company.vo.ComFavVO;

/**
 * Servlet implementation class AddFavCompany
 */
@WebServlet("/AddFavCompany.do")
public class AddFavCompany extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	String prefix = "/WEB-INF/jsp/";
	String suffix = ".jsp";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFavCompany() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ComFavVO comFavVO = new ComFavVO();
		
		try {
			BeanUtils.populate(comFavVO, request.getParameterMap());
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		System.out.println(comFavVO.getComNo());
		System.out.println(comFavVO.getHrNo());
		
		ICompanyService companyService = CompanyServiceImpl.getInstance();
		
		int cnt = companyService.addFavCompany(comFavVO);
	
		
		request.setAttribute("result", cnt);
		request.getRequestDispatcher(prefix+"SSsuccessCheck"+suffix).forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
