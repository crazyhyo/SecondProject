package kr.or.ddit.company.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.cmm.vo.CompanyPagingVO;
import kr.or.ddit.company.vo.ComFavVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.util.SqlMapClientFactory;

public class CompanyDaoImpl implements ICompanyDao{
	
	private String nameSpace = "company.";
	private SqlMapClient smc;
	private static ICompanyDao dao;
	private CompanyDaoImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static ICompanyDao getInstance() {
		if(dao == null) {
			dao = new CompanyDaoImpl();
		}
		return dao;
	}

	@Override
	public int getTotalCompanyCount() throws SQLException {
		int cnt = 0;
		cnt = (int)smc.queryForObject(nameSpace + "getTotalCompanyCount");
		return cnt;
	}

	@Override
	public List<CompanyVO> companyPagingList(CompanyPagingVO companyPagingVO) throws SQLException {
		List<CompanyVO> list = null;
		list = (List<CompanyVO>)smc.queryForList(nameSpace + "companyPagingList", companyPagingVO);
		return list;
	}

	@Override
	public int companyInsert(CompanyVO companyVO) throws SQLException {
		int cnt = 0;
		
		cnt = (int)smc.insert(nameSpace + "companyInsert" , companyVO);
		
		return cnt;
	}

	@Override
	public List<Map<String, Object>> companyDetailList(int comNo) throws SQLException {
		List<Map<String, Object>> list = null;
		
		list = (List<Map<String, Object>>)smc.queryForList(nameSpace + "companyDetailList", comNo);
		
		return list;
	}

	@Override
	public List<Map<String, Object>> companyJOList(int comNo) throws SQLException {
		List<Map<String, Object>> list = null;
		
		list = (List<Map<String, Object>>)smc.queryForList(nameSpace + "companyJOList", comNo);
		
		return list;
	}

	@Override
	public int companyJOCount(int comNo) throws SQLException {
		int cnt = 0;
		
		cnt = (int)smc.queryForObject(nameSpace + "companyJOCount", comNo);
		
		return cnt;
	}

	@Override
	public int companyReviewCount(int comNo) throws SQLException {
		int cnt = 0;
		
		cnt = (int)smc.queryForObject(nameSpace + "companyReviewCount", comNo);
		
		return cnt;
	}

	@Override
	public List<Map<String, Object>> companayReview(int comNo) throws SQLException {
		List<Map<String, Object>> list = null;
		
		list = (List<Map<String, Object>>)smc.queryForList(nameSpace + "companyReview", comNo);
		
		return list;
	}

	@Override
	public int addFavCompany(ComFavVO comFavVO) throws SQLException {
		Object obj = null;
		int cnt = 0;
		
		obj = smc.insert(nameSpace + "addFavCompany", comFavVO);
		
		if(obj == null) {
			cnt = 1;
		} else {
			cnt = 0;
		}
		
		return cnt;
	}

	@Override
	public int deleteFavCompany(ComFavVO comFavVO) throws SQLException {
		int cnt = 0;
		
		cnt = (int)smc.delete(nameSpace + "deleteFavCompany", comFavVO);
		
		return cnt;
	}



}
