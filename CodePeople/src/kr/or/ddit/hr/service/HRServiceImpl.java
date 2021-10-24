package kr.or.ddit.hr.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.cmm.vo.HRPagingVO;
import kr.or.ddit.hr.dao.IHRDao;
import kr.or.ddit.hr.dao.HRDaoImpl;
import kr.or.ddit.hr.vo.HRCardVO;
import kr.or.ddit.hr.vo.HRCrrVO;
import kr.or.ddit.hr.vo.HRFavVO;
import kr.or.ddit.hr.vo.HRInfoVO;
import kr.or.ddit.hr.vo.HRSearchVO;
import kr.or.ddit.hr.vo.HRVO;

public class HRServiceImpl implements IHRService{

	private IHRDao dao;
	private static IHRService service;
	
	private HRServiceImpl() {
		dao = HRDaoImpl.getInstance();
	}

	public static IHRService getInstance() {
		if(service == null) {
			service = new HRServiceImpl();
		}
		return service;
	}
	@Override
	public int getTotalHRCount() {
		int cnt = 0;
		try {
			cnt = dao.getTotalHRCount();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public List<HRVO> hrPagingList(HRPagingVO hrPagingVO) {
		List<HRVO> list = null;
		try {
			list = dao.hrPagingList(hrPagingVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}	
	
	@Override
	public List<HRCardVO> hrCardPagingList(HRPagingVO hrPagingVO) {
		List<HRCardVO> list = null;
		try {
			list = dao.hrCardPagingList(hrPagingVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<HRCardVO> hrCardPagingSearchList(HRSearchVO hrSearchVO) {
		List<HRCardVO> list = null;
		try {
			list = dao.hrCardPagingSearchList(hrSearchVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public int getTotalCardSearchCount(HRSearchVO hrSearchVO) {
		int cnt = 0;
		try {
			cnt = dao.getTotalCardSearchCount(hrSearchVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	
	@Override
	public int addFavHr(HRFavVO hrFavVO) {
		int cnt = 0;
		try {
			cnt = dao.addFavHr(hrFavVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	
	@Override
	public int deleteFavHr(HRFavVO hrFavVO) {
	int cnt = 0;
	try {
		cnt = dao.deleteFavHr(hrFavVO);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return cnt;
	}
	
	
	@Override
	public int updateJobInfo(HRInfoVO hrInfoVO) {
	int cnt = 0;
	try {
		cnt = dao.updateJobInfo(hrInfoVO);
	} catch (SQLException e) {
		e.printStackTrace();
	}
			return cnt;
	}
	
	
	
	
	
	@Override
	public int insertCrr(HRInfoVO hrInfoVO) {
		int cnt = 0;
		try {
			int crrNo = dao.insertCrr(hrInfoVO);
			
			hrInfoVO.setCrrNo(crrNo);
			System.out.println(hrInfoVO.getCrrNo());
			cnt = dao.updateCrrHR(hrInfoVO);
			 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	@Override
	public int updateCrr(HRInfoVO hrInfoVO) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	@Override
	public List<HRCrrVO> selectCrr(int hrNo) {
		List<HRCrrVO> crrList = null;
    	try {
			crrList = dao.selectCrr(hrNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return crrList;
	}
	
}
