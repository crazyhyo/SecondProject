package kr.or.ddit.prov.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.prov.vo.CityVO;
import kr.or.ddit.prov.vo.ProvVO;

public interface IProvDao {
	public List<CityVO> selectCityList() throws SQLException;
	public List<ProvVO> selectProvList(int city_code_no) throws SQLException;
}
