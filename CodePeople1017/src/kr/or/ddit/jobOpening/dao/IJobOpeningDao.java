package kr.or.ddit.jobOpening.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.jobOpening.vo.JobOpeningVO;

public interface IJobOpeningDao {
	List<Integer> joSalaryList() throws SQLException;
	
//	List<JobOpeningVO> joSearch(JobOpeningVO joVO) throws SQLException;
	List<JobOpeningVO> joSearch() throws SQLException;
}
