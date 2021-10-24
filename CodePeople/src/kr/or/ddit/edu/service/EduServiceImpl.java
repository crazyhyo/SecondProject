package kr.or.ddit.edu.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.edu.dao.IEduDao;
import kr.or.ddit.edu.dao.EduDaoImpl;
import kr.or.ddit.edu.vo.EduVO;
import kr.or.ddit.hr.vo.HRInfoVO;

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
	
	
	@Override
	public int insertEdu(HRInfoVO hrInfoVO) {
		int cnt = 0;
		try {
			int eduNo = dao.insertEdu(hrInfoVO);
			System.out.println(eduNo);
			
			hrInfoVO.setEduNo(eduNo);
			
			System.out.println(hrInfoVO.getEduNo());
			System.out.println(hrInfoVO.getHrNo());
			
			cnt = dao.updateEduHR(hrInfoVO);
			 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
		}

		@Override
	public int updateEdu(HRInfoVO hrInfoVO) {
		// TODO Auto-generated method stub
		return 0;
	}
		
	@Override
	public List<EduVO> selectEdu(int hrNo) {
		List<EduVO> eduList = null;
		try {
			eduList = dao.selectEdu(hrNo);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
    	return eduList;
	
	
	}
}
