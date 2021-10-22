package kr.or.ddit.schedule.service;

import kr.or.ddit.schedule.dao.IScheduleDao;
import kr.or.ddit.schedule.dao.ScheduleDaoImpl;

public class ScheduleServiceImpl implements IScheduleService{

	private IScheduleDao dao;
	private static IScheduleService service;
	
	private ScheduleServiceImpl() {
		dao = ScheduleDaoImpl.getInstance();
	}
	public static IScheduleService getInstance() {
		if(service == null) {
			service = new ScheduleServiceImpl();
		}
		return service;
	}	

}
