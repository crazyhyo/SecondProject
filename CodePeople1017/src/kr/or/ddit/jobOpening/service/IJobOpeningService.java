package kr.or.ddit.jobOpening.service;

import java.util.List;

import kr.or.ddit.jobOpening.vo.JobOpeningVO;

public interface IJobOpeningService {

	public List<Integer> joSalaryList();
	
	List<JobOpeningVO> joSearch();
//	List<JobOpeningVO> joSearch(JobOpeningVO joVO);
}