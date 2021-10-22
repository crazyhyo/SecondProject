package kr.or.ddit.jobOpening.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.cmm.vo.JobOpeningPagingVO;
import kr.or.ddit.jobOpening.vo.JobOpeningVO;
import kr.or.ddit.util.SqlMapClientFactory;

public class JobOpeningDaoImpl implements IJobOpeningDao{
	
	private String nameSpace = "jobOpening.";
	
	private SqlMapClient smc;
	private static IJobOpeningDao dao;
	private JobOpeningDaoImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IJobOpeningDao getInstance() {
		if(dao == null) {
			dao = new JobOpeningDaoImpl();
		}
		return dao;
	}

	@Override
	public int getTotalJobOpeningCount() throws SQLException {
		int cnt = 0;
		cnt = (int)smc.queryForObject(nameSpace + "getTotalJobOpeningCount");
		return cnt;
	}

	@Override
	public List<JobOpeningVO> jobOpeningPagingList(JobOpeningPagingVO jobOpeningPagingVO) throws SQLException {

		List<JobOpeningVO> list = null;
		list = (List<JobOpeningVO>)smc.queryForList(nameSpace + "jobOpeningPagingList", jobOpeningPagingVO);
		return list;
	}

	@Override
	public List<Map<String, Object>> jobOpeningCardList(JobOpeningPagingVO jobOpeningPagingVO) throws SQLException {
		List<Map<String, Object>> list = null;
		list = (List<Map<String, Object>>)smc.queryForList(nameSpace + "jobOpeningCardList", jobOpeningPagingVO);
		return list;
	}
	
	@Override
	public List<Map<String, Object>> jobOpeningCardSearchList(HashMap jobOpeningSearchVO) throws SQLException {
		List<Map<String, Object>> list = null;
		list = (List<Map<String, Object>>)smc.queryForList(nameSpace + "jobOpeningCardSearchList", jobOpeningSearchVO);
		return list;
	}

	@Override
	public int getTotalJobOpeningSearchCount(HashMap jobOpeningSearchVO) throws SQLException {
		int cnt = 0;
		cnt = (int)smc.queryForObject(nameSpace + "getTotalJobOpeningSearchCount", jobOpeningSearchVO);
		return cnt;
	}

	@Override
	public int insertJobOpening(JobOpeningVO jobOpeningVO) throws SQLException {
		int cnt = 0;
		cnt = (int)smc.insert(nameSpace + "insertJobOpening", jobOpeningVO);
		return cnt;
	}

	@Override
	public int insertJoSchedule(JobOpeningVO jobOpeningVO) throws SQLException {
		int cnt = 0;
		cnt = (int)smc.insert(nameSpace + "insertJoSchedule", jobOpeningVO);
		return cnt;
	}

	@Override
	public int addJoScheTag(int scheNo) throws SQLException {
		Object obj = null;
		obj = smc.insert(nameSpace + "addJoScheTag", scheNo);
		if(obj == null) {
			return 1;
		}else {
			return 0;
		}
	}



}
