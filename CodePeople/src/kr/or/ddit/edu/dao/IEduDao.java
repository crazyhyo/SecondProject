package kr.or.ddit.edu.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.edu.vo.EduVO;

public interface IEduDao {
	public List<EduVO> selectEduCodeList() throws SQLException;
}
