package kr.or.ddit.hr.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import kr.or.ddit.company.service.CompanyServiceImpl;
import kr.or.ddit.company.service.ICompanyService;
import kr.or.ddit.hr.dao.IHRDao;
import kr.or.ddit.hr.service.HRServiceImpl;
import kr.or.ddit.hr.service.IHRService;
import kr.or.ddit.hr.vo.HRFavVO;
import kr.or.ddit.hr.vo.HRSearchVO;
import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

/**
 * Servlet implementation class AddFavHR
 */
@WebServlet("/AddFavHR.do")
public class AddFavHR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	String prefix = "/mainJsp/";
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		HttpSession session = request.getSession();
        MemberVO loginMember = session.getAttribute("memVO") == null?
                    null : (MemberVO)session.getAttribute("memVO");

            if(loginMember == null) {
            	
                request.setAttribute("result", -1);
                request.getRequestDispatcher(prefix+"favResult"+suffix).forward(request, response);

            }else {

                int memCode = loginMember.getMemCode();
                if(memCode == 2) {
               	
                    IMemberService memberService = MemberServiceImpl.getInstance();
                    int memNo = loginMember.getMemNo();
                 
                    
                    //memNo?? comNo????????
                    int comNo = memberService.getComNo(memNo);
                    
                    //?????? ?????? ?????? ???????? ???? ???? 
                    ICompanyService comService = CompanyServiceImpl.getInstance();
                    int comCnt = comService.companyCount(memNo);
          
                    if (comCnt ==0) {
                    	request.setAttribute("result", -1);
                        request.getRequestDispatcher(prefix+"favResult"+suffix).forward(request, response);
                    }else {
                    	
                    //???????????? ?? ????????
                	int hrNo = Integer.parseInt(request.getParameter("hrNo"));
                	
                	//?????? ?????? ?????? ????
                	HRFavVO hrFavVO = new HRFavVO();
                	hrFavVO.setComNo(comNo);
                	hrFavVO.setHrNo(hrNo);
                	IHRService hrService = HRServiceImpl.getInstance();
                	
                	//?????? ?????????? ???????? ????
                	int checkFav = hrService.checkFavHr(hrFavVO);
                	if(checkFav>0) {
                		 request.setAttribute("result", -2);
                         request.getRequestDispatcher(prefix+"favResult"+suffix).forward(request, response);

                	}else {
            		
            		int cnt = hrService.addFavHr(hrFavVO);
            		
            		request.setAttribute("result", cnt);

                    request.getRequestDispatcher(prefix+"favResult"+suffix).forward(request, response);
                	}
                    }
                }else {

                	System.out.println("mem1");
                    request.setAttribute("result", -1);
                    request.getRequestDispatcher(prefix+"favResult"+suffix).forward(request, response);
                	
                }
            }
            
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
