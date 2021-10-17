package kr.or.ddit.jobOpening.service;

import java.util.List;

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
	public List<Integer> joSalaryList() {
		List<Integer> list = null;
		try {
			list = dao.joSalaryList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
