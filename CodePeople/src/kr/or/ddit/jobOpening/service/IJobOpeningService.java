package kr.or.ddit.jobOpening.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.cmm.vo.JobOpeningPagingVO;
import kr.or.ddit.jobOpening.vo.JobOpeningVO;

public interface IJobOpeningService {
	
	public int getTotalJobOpeningCount();
	
	public List<JobOpeningVO> jobOpeningPagingList(JobOpeningPagingVO jobOpeningPagingVO);

	public List<Map<String, Object>> jobOpeningCardList(JobOpeningPagingVO jobOpeningPagingVO);
	
	public List<Map<String, Object>> jobOpeningCardSearchList(HashMap jobOpeningSearchVO);
	
	public int getTotalJobOpeningSearchCount(HashMap jobOpeningSearchVO);
	
	// 채용공고를 등록하고, 일정에 채용공고를 추가하고, 추가한 일정에 태그를 추가한다, return은 등록한 채용공고 번호
	public int insertJobOpening(JobOpeningVO jobOpeningVO);
	
}
