package kr.or.ddit.member.service;

import java.sql.SQLException;

import kr.or.ddit.member.vo.MemberVO;

public interface IMemberService {

	/**
	 * 아이디 중복 확인을 위한 메서드
	 * @param inputId
	 * @return 데이터베이스에서 꺼내온 아이디 값
	 */
	public String selectById(String inputId);
	
	/**
	 * 로그인을 위한 메서드
	 * @param memId
	 * @param memPw
	 * @return MemberVO
	 */
	public MemberVO loginMember(MemberVO vo);
	
	/**
	 * 회원가입이 성공적이면 양수, 실패하면 0를 반환하는 메서드
	 * @param vo
	 * @return int
	 * @throws SQLException
	 */
	public int joinPerson(MemberVO vo);
	public int joinCompany(MemberVO vo);
	public int joinHr(int memNo);

	/**
	 * 회원 정보 수정
	 * @param vo
	 * @return 성공 양수, 실패 음수
	 */
	public int updateMember(MemberVO vo);

	public int deleteMember(MemberVO vo);
	
	// 인재번호 조회
	public int getHrNo(MemberVO vo);
	
}
