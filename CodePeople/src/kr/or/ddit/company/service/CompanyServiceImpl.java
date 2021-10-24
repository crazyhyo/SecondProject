package kr.or.ddit.company.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.company.dao.ICompanyDao;
import kr.or.ddit.cmm.vo.CompanyPagingVO;
import kr.or.ddit.company.dao.CompanyDaoImpl;
import kr.or.ddit.company.vo.ComFavVO;
import kr.or.ddit.company.vo.CompanyVO;

public class CompanyServiceImpl implements ICompanyService{

	private ICompanyDao dao;
	private static ICompanyService service;
	
	private CompanyServiceImpl() {
		dao = CompanyDaoImpl.getInstance();
	}
	public static ICompanyService getInstance() {
		if(service == null) {
			service = new CompanyServiceImpl();
		}
		return service;
	}
	@Override
	public int getTotalCompanyCount() {
		int cnt = 0;
		try {
			cnt = dao.getTotalCompanyCount();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public List<CompanyVO> companyPagingList(CompanyPagingVO companyPagingVO) {
		List<CompanyVO> list = null;
		try {
			list = dao.companyPagingList(companyPagingVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int companyInsert(CompanyVO companyVO) {
		int cnt = 0;
		
		try {
			cnt = dao.companyInsert(companyVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	@Override
	public List<Map<String, Object>> companyDetailList(int comNo) {
		List<Map<String, Object>> list = null;
		
		try {
			list = dao.companyDetailList(comNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	@Override
	public List<Map<String, Object>> companyJOList(int comNo) {
		List<Map<String, Object>> list = null;
		
		try {
			list = dao.companyJOList(comNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	@Override
	public int companyJOCount(int comNo) {
		int cnt = 0;
		
		try {
			cnt = dao.companyJOCount(comNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	@Override
	public int companyReviewCount(int comNo) {
		int cnt = 0;
		
		try {
			cnt = dao.companyReviewCount(comNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	@Override
	public List<Map<String, Object>> companyReview(int comNo) {
		List<Map<String, Object>> list = null;
		
		try {
			list = dao.companayReview(comNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	@Override
	public int addFavCompany(ComFavVO comFavVO) {
		int cnt = 0;
		
		try {
			cnt = dao.addFavCompany(comFavVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}
	@Override
	public int deleteFavCompany(ComFavVO comFavVO) {
		int cnt = 0;
		
		try {
			cnt = dao.deleteFavCompany(comFavVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

}
