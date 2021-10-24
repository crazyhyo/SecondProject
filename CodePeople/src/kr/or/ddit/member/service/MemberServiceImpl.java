package kr.or.ddit.member.service;

import java.sql.SQLException;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberDaoImpl;
import kr.or.ddit.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService{

	private IMemberDao memberDao;
	private static IMemberService memberService;
	
	private MemberServiceImpl() {
		memberDao = MemberDaoImpl.getInstance();
	}
	
	public static IMemberService getInstance() {
		if(memberService == null) {
			memberService = new MemberServiceImpl();
		}
		return memberService;
	}

	@Override
	public String selectById(String inputId) {
		String memId = "";
		
		try {
			memId = memberDao.selectById(inputId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return memId;
	}

	@Override
	public MemberVO loginMember(MemberVO vo) {
		MemberVO memVO = null;
		try {
			memVO = memberDao.loginMember(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memVO;
	}


	@Override
	public int joinPerson(MemberVO vo) {
		int res = 0;
		int memNO = 0;
		
		Object obj = null;
		try {
			memNO = memberDao.joinPerson(vo);
			obj = memberDao.joinHr(memNO);
			
			if(obj == null) {
				res = 1;
			}else {
				res = 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int joinCompany(MemberVO vo) {
		int memNO = 0;
		
		try {
			memNO = memberDao.joinCompany(vo);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return memNO;
	}

	@Override
	public int joinHr(int memNo) {
		int res = 0;
		
		try {
			res = memberDao.joinHr(memNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int updateMember(MemberVO vo) {
		int res = 0;
		
		try {
			res = memberDao.updateMember(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int deleteMember(MemberVO vo) {
		int res = 0;
		
		try {
			res = memberDao.deleteMember(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int getHrNo(MemberVO vo) {
		int cnt = 0;
		try {
			cnt = memberDao.getHrNo(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	
	
}
