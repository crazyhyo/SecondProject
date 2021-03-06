package kr.or.ddit.hr.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.cmm.vo.HRPagingVO;
import kr.or.ddit.hr.vo.HRCardVO;
import kr.or.ddit.hr.vo.HRSearchVO;
import kr.or.ddit.hr.vo.HRVO;

public interface IHRDao {

	

	public int getTotalHRCount() throws SQLException;
	
	public List<HRVO> hrPagingList(HRPagingVO hrPagingVO) throws SQLException;
	
	public List<HRCardVO> hrCardPagingList(HRPagingVO hrPagingVO) throws SQLException;
	
	public List<HRCardVO> hrCardPagingSearchList(HRSearchVO hrSearchVO) throws SQLException;
	
	public int getTotalCardSearchCount(HRSearchVO hrSearchVO) throws SQLException;
	

}
