package kr.or.ddit.member.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.util.SqlMapClientFactory;

public class MemberDaoImpl implements IMemberDao{
	
	SqlMapClient smc;
	private static IMemberDao memberDao;
	
	private MemberDaoImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	public static IMemberDao getInstance() {
		if(memberDao == null) {
			memberDao = new MemberDaoImpl();
		}
		return memberDao;
	}
	
	@Override
	public String selectById(String inputId) throws SQLException {
		
		return (String) smc.queryForObject("member.selectById", inputId);
	}
	
	@Override
	public MemberVO loginMember(MemberVO vo) throws SQLException {
		
		return (MemberVO) smc.queryForObject("member.loginMember", vo);
	}
	
	@Override
	public int joinPerson(MemberVO vo) throws SQLException {
		return (Integer) smc.insert("member.joinPerson", vo);
	}
	@Override
	public int joinCompany(MemberVO vo) throws SQLException {
		return (Integer) smc.insert("member.joinCompany", vo);
	}
	@Override
	public int joinHr(int memNo) throws SQLException {
		Object obj = null;
		obj = smc.insert("member.joinHr", memNo);
		int cnt = obj == null ? 1 : 0;
		return cnt;
	}
	
	@Override
	public int updateMember(MemberVO vo) throws SQLException {
		
		return smc.update("member.updateMember", vo);
	}
	@Override
	public int deleteMember(MemberVO vo) throws SQLException {
		return smc.delete("member.deleteMember", vo);
	}
	@Override
	public int getHrNo(MemberVO vo) throws SQLException {
		int cnt = 0;
		cnt = (int)smc.queryForObject("member.getHrNo", vo);
		return cnt;
	}
	
	
}
