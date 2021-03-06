package kr.or.ddit.edu.service;

import java.util.List;

import kr.or.ddit.edu.dao.IEduDao;
import kr.or.ddit.edu.dao.EduDaoImpl;
import kr.or.ddit.edu.vo.EduVO;

public class EduServiceImpl implements IEduService{

	private IEduDao dao;
	private static IEduService service;
	
	private EduServiceImpl() {
		dao = EduDaoImpl.getInstance();
	}
	public static IEduService getInstance() {
		if(service == null) {
			service = new EduServiceImpl();
		}
		return service;
	}	

	@Override
	public List<EduVO> selectEduCodeList() {
		List<EduVO> list = null;
		try {
			list = dao.selectEduCodeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
