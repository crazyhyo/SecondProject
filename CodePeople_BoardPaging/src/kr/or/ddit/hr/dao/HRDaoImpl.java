package kr.or.ddit.hr.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.cmm.vo.HRPagingVO;
import kr.or.ddit.hr.vo.HRCardVO;
import kr.or.ddit.hr.vo.HRSearchVO;
import kr.or.ddit.hr.vo.HRVO;
import kr.or.ddit.util.SqlMapClientFactory;

public class HRDaoImpl implements IHRDao{
	
	private String nameSpace = "hr.";
	
	private SqlMapClient smc;
	private static IHRDao dao;
	private HRDaoImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IHRDao getInstance() {
		if(dao == null) {
			dao = new HRDaoImpl();
		}
		return dao;
	}

	
	@Override
	public int getTotalHRCount() throws SQLException {
		int cnt = 0;
		cnt = (int)smc.queryForObject(nameSpace + "getTotalHRCount");
		return cnt;
	}

	@Override
	public List<HRVO> hrPagingList(HRPagingVO hrPagingVO) throws SQLException {

		List<HRVO> list = null;
		list = (List<HRVO>)smc.queryForList(nameSpace + "hrPagingList", hrPagingVO);
		return list;
	}
	

	@Override
	public List<HRCardVO> hrCardPagingList(HRPagingVO hrPagingVO) throws SQLException {
		List<HRCardVO> list = null;
		list = (List<HRCardVO>)smc.queryForList(nameSpace + "hrCardPagingList", hrPagingVO);
		return list;
	}

	
	@Override
	public List<HRCardVO> hrCardPagingSearchList(HRSearchVO hrSearchVO) throws SQLException {
		List<HRCardVO> list = null;
		list = (List<HRCardVO>)smc.queryForList(nameSpace + "hrCardPagingSearchList", hrSearchVO);
		return list;
	}
	
	   @Override
	public int getTotalCardSearchCount(HRSearchVO hrSearchVO) throws SQLException {
		int cnt = 0;
		cnt = (int) smc.queryForObject(nameSpace +"getTotalCardSearchCount",hrSearchVO);
		return cnt;
	}

}
