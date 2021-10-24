package kr.or.ddit.member.dao;

import java.sql.SQLException;

import kr.or.ddit.member.vo.MemberVO;

public interface IMemberDao {
	
	// 아이디 중복 검사
	public String selectById(String inputId) throws SQLException;
	
	// 로그인 
	public MemberVO loginMember(MemberVO vo) throws SQLException;
	
	// 회원가입 (개인/회사)
	public int joinPerson(MemberVO vo) throws SQLException;
	public int joinCompany(MemberVO vo) throws SQLException;
	public int joinHr(int memNo) throws SQLException;
	
	// 회원정보 수정
	public int updateMember(MemberVO vo) throws SQLException;
	
	// 회원정보 삭제
	public int deleteMember(MemberVO vo) throws SQLException;
	
	// 인재번호 조회
	public int getHrNo(MemberVO vo) throws SQLException;
}
