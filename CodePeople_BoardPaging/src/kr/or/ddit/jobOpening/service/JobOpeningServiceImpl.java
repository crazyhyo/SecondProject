package kr.or.ddit.jobOpening.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.cmm.vo.JobOpeningPagingVO;
import kr.or.ddit.jobOpening.dao.IJobOpeningDao;
import kr.or.ddit.jobOpening.dao.JobOpeningDaoImpl;
import kr.or.ddit.jobOpening.vo.JobOpeningVO;

public class JobOpeningServiceImpl implements IJobOpeningService{

	private IJobOpeningDao dao;
	private static IJobOpeningService service;
	
	private JobOpeningServiceImpl() {
		dao = JobOpeningDaoImpl.getInstance();
	}
	public static IJobOpeningService getInstance() {
		if(service == null) {
			service = new JobOpeningServiceImpl();
		}
		return service;
	}
	@Override
	public int getTotalJobOpeningCount() {
		int cnt = 0;
		try {
			cnt = dao.getTotalJobOpeningCount();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public List<JobOpeningVO> jobOpeningPagingList(JobOpeningPagingVO jobOpeningPagingVO) {
		List<JobOpeningVO> list = null;
		try {
			list = dao.jobOpeningPagingList(jobOpeningPagingVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<Map<String, Object>> jobOpeningCardSearchList(HashMap jobOpeningSearchVO) {
		List<Map<String, Object>> list = null;
		try {
			list = dao.jobOpeningCardSearchList(jobOpeningSearchVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<Map<String, Object>> jobOpeningCardList(JobOpeningPagingVO jobOpeningPagingVO) {
		List<Map<String, Object>> list = null;
		try {
			list = dao.jobOpeningCardList(jobOpeningPagingVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int getTotalJobOpeningSearchCount(HashMap jobOpeningSearchVO) {
		int cnt = 0;
		try {
			cnt = dao.getTotalJobOpeningSearchCount(jobOpeningSearchVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}	

}
