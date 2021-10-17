/* 개발언어 */												
CREATE TABLE PROG_LANG (												
	PL_CODE_NO NUMBER , /* 개발언어 번호 */
	PL_CODE_NM VARCHAR2(200)  /* 개발언어명 */
);												
												
COMMENT ON TABLE PROG_LANG IS '개발언어';												
												
COMMENT ON COLUMN PROG_LANG.PL_CODE_NO IS '개발언어 번호';												
COMMENT ON COLUMN PROG_LANG.PL_CODE_NM IS '개발언어명';												

												
/* 이력서 */												
CREATE TABLE CV (												
	CV_NO NUMBER , /* 이력서번호 */											
	HR_NO NUMBER , /* 인재번호 */											
	CV_OPEN NUMBER, /* 공개여부 */											
	CV_SAL NUMBER, /* 연봉 */											
	CV_CMT VARCHAR2(200), /* 한마디 */											
	CV_CNT NUMBER, /* 열람회수 */											
	ATCH_FILE_ID NUMBER /* 첨부파일아이디 */											
);												
												
COMMENT ON TABLE CV IS '이력서';												
												
COMMENT ON COLUMN CV.CV_NO IS '이력서번호';												
												
COMMENT ON COLUMN CV.HR_NO IS '인재번호';												
												
COMMENT ON COLUMN CV.CV_OPEN IS '공개여부';												
												
COMMENT ON COLUMN CV.CV_SAL IS '연봉';												
												
COMMENT ON COLUMN CV.CV_CMT IS '한마디';												
												
COMMENT ON COLUMN CV.CV_CNT IS '열람회수';												
												
COMMENT ON COLUMN CV.ATCH_FILE_ID IS '첨부파일아이디';												
												
/* 직군 */												
CREATE TABLE JOB_GROUP (												
	JG_CODE_NO NUMBER , /* 직군번호 */											
	JG_CODE_NM VARCHAR2(200)  /* 직군명 */											
);												
												
COMMENT ON TABLE JOB_GROUP IS '직군';												
												
COMMENT ON COLUMN JOB_GROUP.JG_CODE_NO IS '직군번호';												
												
COMMENT ON COLUMN JOB_GROUP.JG_CODE_NM IS '직군명';												
												
												
/* 직무 */												
CREATE TABLE JOB_TITLE (												
	JT_CODE_NO NUMBER , /* 직무번호 */											
	JT_CODE_NM VARCHAR2(200) , /* 직무명 */											
	JG_CODE_NO NUMBER /* 직군번호 */											
);												
												
COMMENT ON TABLE JOB_TITLE IS '직무';												
												
COMMENT ON COLUMN JOB_TITLE.JT_CODE_NO IS '직무번호';												
												
COMMENT ON COLUMN JOB_TITLE.JT_CODE_NM IS '직무명';												
												
COMMENT ON COLUMN JOB_TITLE.JG_CODE_NO IS '직군번호';												
												
												
												
/* 채용공고 */												
CREATE TABLE JOB_OPENING (												
	JO_NO NUMBER , /* 채용공고번호 */											
	JO_TITLE VARCHAR2(200) , /* 채용공고제목 */											
	COM_NO NUMBER , /* 기업번호 */											
	JO_SDATE DATE, /* 시작일 */											
	JO_EDATE DATE, /* 종료일 */											
	JG_CODE_NO NUMBER, /* 직군번호 */											
	JT_CODE_NO NUMBER, /* 직무번호 */											
	JO_SAL NUMBER, /* 연봉 */											
	JO_RANK VARCHAR2(200), /* 직급 */											
	JO_MTHD VARCHAR2(2000), /* 접수방법 */											
	JO_LINK VARCHAR2(2000), /* 지원링크 */											
	JO_CLIP NUMBER, /* 스크랩수 */											
	JO_FILE NUMBER, /* 첨부파일아이디 */											
	JO_ZIPCODE NUMBER , /* 우편번호 */											
	JO_ADDR1 VARCHAR2(200),  /* 상세주소1 */											
	JO_ADDR2 VARCHAR2(200),  /* 상세주소2 */											
	PL_CODE_NO NUMBER  /* 개발언어 번호 */
);												
												
COMMENT ON TABLE JOB_OPENING IS '채용공고';												
												
COMMENT ON COLUMN JOB_OPENING.JO_NO IS '채용공고번호';												
												
COMMENT ON COLUMN JOB_OPENING.JO_TITLE IS '채용공고제목';												
												
COMMENT ON COLUMN JOB_OPENING.COM_NO IS '기업번호';												
												
COMMENT ON COLUMN JOB_OPENING.JO_SDATE IS '시작일';												
												
COMMENT ON COLUMN JOB_OPENING.JO_EDATE IS '종료일';												
												
COMMENT ON COLUMN JOB_OPENING.JG_CODE_NO IS '직군EP';												
												
COMMENT ON COLUMN JOB_OPENING.JT_CODE_NO IS '직무번호';												
												
COMMENT ON COLUMN JOB_OPENING.JO_SAL IS '연봉';												
												
COMMENT ON COLUMN JOB_OPENING.JO_RANK IS '직급';												
												
COMMENT ON COLUMN JOB_OPENING.JO_MTHD IS '접수방법';												
												
COMMENT ON COLUMN JOB_OPENING.JO_LINK IS '지원링크';												
												
COMMENT ON COLUMN JOB_OPENING.JO_CLIP IS '스크랩수';												
												
COMMENT ON COLUMN JOB_OPENING.JO_FILE IS '첨부파일아이디';												
												
COMMENT ON COLUMN JOB_OPENING.JO_ZIPCODE IS '우편번호';												
												
COMMENT ON COLUMN JOB_OPENING.JO_ADDR1 IS '상세주소1';												
COMMENT ON COLUMN JOB_OPENING.JO_ADDR2 IS '상세주소2';												
COMMENT ON COLUMN JOB_OPENING.PL_CODE_NO IS '개발언어 번호';												
												
												
												
/* 게시판 */												
CREATE TABLE BOARD_CODE (												
	BOARD_CODE_NO NUMBER , /* 게시판번호 */											
	BOARD_CODE_NM VARCHAR2(200)  /* 게시판명 */											
);												
												
COMMENT ON TABLE BOARD_CODE IS '게시판';												
												
COMMENT ON COLUMN BOARD_CODE.BOARD_CODE_NO IS '게시판번호';												
												
COMMENT ON COLUMN BOARD_CODE.BOARD_CODE_NM IS '게시판명';												
												
												
/* 게시글 */												
CREATE TABLE BOARD (												
	BOARD_NO NUMBER , /* 게시글번호 */											
	BOARD_CODE_NO NUMBER , /* 게시판번호 */											
	BOARD_TITLE VARCHAR2(200), /* 제목 */											
	BOARD_CONT VARCHAR2(1000), /* 내용 */											
	MEM_NO NUMBER, /* 회원번호 */											
	BOARD_HIT NUMBER, /* 조회수 */											
	BOARD_REPT NUMBER, /* 신고수 */											
	BOARD_LIKE NUMBER, /* 추천수 */											
	BOARD_REPL NUMBER, /* 댓글수 */											
	BOARD_POP NUMBER, /* 인기게시글여부 */											
	BOARD_DATE DATE, /* 작성일 */											
	BOARD_ACTIVE NUMBER, /* 활성화여부 */											
	BOARD_HEAD VARCHAR2(200), /* 말머리 */											
	ATCH_FILE_ID NUMBER /* 첨부파일아이디 */											
);												
												
COMMENT ON TABLE BOARD IS '게시글';												
												
COMMENT ON COLUMN BOARD.BOARD_NO IS '게시글번호';												
												
COMMENT ON COLUMN BOARD.BOARD_CODE_NO IS '게시판번호';												
												
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '제목';												
												
COMMENT ON COLUMN BOARD.BOARD_CONT IS '내용';												
												
COMMENT ON COLUMN BOARD.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN BOARD.BOARD_HIT IS '조회수';												
												
COMMENT ON COLUMN BOARD.BOARD_REPT IS '신고수';												
												
COMMENT ON COLUMN BOARD.BOARD_LIKE IS '추천수';												
												
COMMENT ON COLUMN BOARD.BOARD_REPL IS '댓글수';												
												
COMMENT ON COLUMN BOARD.BOARD_POP IS '인기게시글여부';												
												
COMMENT ON COLUMN BOARD.BOARD_DATE IS '작성일';												
												
COMMENT ON COLUMN BOARD.BOARD_ACTIVE IS '활성화여부';												
												
COMMENT ON COLUMN BOARD.BOARD_HEAD IS '말머리';												
												
COMMENT ON COLUMN BOARD.ATCH_FILE_ID IS '첨부파일아이디';												
												
												
/* 댓글 */												
CREATE TABLE REPLY (												
	REP_NO NUMBER , /* 댓글번호 */											
	BOARD_CODE_NO NUMBER , /* 게시판번호 */											
	BOARD_NO NUMBER , /* 게시글번호 */											
	REP_SEQ NUMBER , /* 댓글순번 */											
	REP_LIKE NUMBER, /* 추천수 */											
	REP_CONT VARCHAR2(200), /* 내용 */											
	MEM_NO NUMBER, /* 회원번호 */											
	REP_DATE DATE, /* 작성일 */											
	REP_PRNT NUMBER, /* 상위댓글번호 */											
	REP_REPT NUMBER /* 신고수 */											
);												
												
COMMENT ON TABLE REPLY IS '댓글';												
												
COMMENT ON COLUMN REPLY.REP_NO IS '댓글번호';												
												
COMMENT ON COLUMN REPLY.BOARD_CODE_NO IS '게시판번호';												
												
COMMENT ON COLUMN REPLY.BOARD_NO IS '게시글번호';												
												
COMMENT ON COLUMN REPLY.REP_SEQ IS '댓글순번';												
												
COMMENT ON COLUMN REPLY.REP_LIKE IS '추천수';												
												
COMMENT ON COLUMN REPLY.REP_CONT IS '내용';												
												
COMMENT ON COLUMN REPLY.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN REPLY.REP_DATE IS '작성일';												
												
COMMENT ON COLUMN REPLY.REP_PRNT IS '상위댓글번호';												
												
COMMENT ON COLUMN REPLY.REP_REPT IS '신고수';												
												
												
/* 스크랩공고 */												
CREATE TABLE CLIP (												
	HR_NO NUMBER , /* 인재번호 */											
	JO_NO NUMBER  /* 채용공고번호 */											
);												
												
COMMENT ON TABLE CLIP IS '스크랩공고';												
												
COMMENT ON COLUMN CLIP.HR_NO IS '인재번호';												
												
COMMENT ON COLUMN CLIP.JO_NO IS '채용공고번호';												
												
												
/* 리뷰 */												
CREATE TABLE REVIEW (												
	COM_NO NUMBER , /* 기업번호 */											
	MEM_NO NUMBER , /* 회원번호 */											
	REV_CRR NUMBER, /* 커리어 향상 */											
	REV_WLB NUMBER, /* 워라밸 */											
	REV_SAL NUMBER, /* 급여 및 복지 */											
	REV_CUL NUMBER, /* 사내 문화 */											
	REV_EXECS NUMBER, /* 경영진 */											
	REV_COMT VARCHAR2(200) /* 코멘트 */											
);												
												
COMMENT ON TABLE REVIEW IS '리뷰';												
												
COMMENT ON COLUMN REVIEW.COM_NO IS '기업번호';												
												
COMMENT ON COLUMN REVIEW.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN REVIEW.REV_CRR IS '커리어 향상';												
												
COMMENT ON COLUMN REVIEW.REV_WLB IS '워라밸';												
												
COMMENT ON COLUMN REVIEW.REV_SAL IS '급여 및 복지';												
												
COMMENT ON COLUMN REVIEW.REV_CUL IS '사내 문화';												
												
COMMENT ON COLUMN REVIEW.REV_EXECS IS '경영진';												
												
COMMENT ON COLUMN REVIEW.REV_COMT IS '코멘트';												
												
												
/* 회원가입정보 */												
CREATE TABLE MEMBER (												
	MEM_NO NUMBER , /* 회원번호 */											
	MEM_NM VARCHAR2(200) , /* 회원명 */											
	MEM_ID VARCHAR2(200) , /* 아이디 */											
	MEM_PW VARCHAR2(200) , /* 비밀번호 */											
	MEM_EMAIL VARCHAR2(200) , /* 이메일 */											
	MEM_HP VARCHAR2(200) , /* 전화번호 */											
	MEM_ZIPCODE NUMBER, /* 우편번호 */											
	MEM_ADDR1 VARCHAR2(200), /* 상세주소1 */											
	MEM_ADDR2 VARCHAR2(200), /* 상세주소2 */											
	MEM_CODE NUMBER, /* 회원구분코드번호 */											
	MEM_ACTIVE NUMBER, /* 활성화여부 */											
	MEM_GENDER NUMBER, /* 성별 */											
	ATCH_FILE_ID NUMBER, /* 첨부파일아이디 */											
	MEM_IN_COM NUMBER, /* 재직자구분 */											
	MEM_BIR DATE /* 생년월일 */											
);												
												
COMMENT ON TABLE MEMBER IS '회원가입정보';												
												
COMMENT ON COLUMN MEMBER.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN MEMBER.MEM_NM IS '회원명';												
												
COMMENT ON COLUMN MEMBER.MEM_ID IS '아이디';												
												
COMMENT ON COLUMN MEMBER.MEM_PW IS '비밀번호';												
												
COMMENT ON COLUMN MEMBER.MEM_EMAIL IS '이메일';												
												
COMMENT ON COLUMN MEMBER.MEM_HP IS '전화번호';												
												
COMMENT ON COLUMN MEMBER.MEM_ZIPCODE IS '우편번호';												
												
COMMENT ON COLUMN MEMBER.MEM_ADDR1 IS '상세주소1';												
COMMENT ON COLUMN MEMBER.MEM_ADDR2 IS '상세주소2';												
												
COMMENT ON COLUMN MEMBER.MEM_CODE IS '회원구분코드번호';												
												
COMMENT ON COLUMN MEMBER.MEM_ACTIVE IS '활성화여부';												
												
COMMENT ON COLUMN MEMBER.MEM_GENDER IS '성별';												
												
COMMENT ON COLUMN MEMBER.ATCH_FILE_ID IS '첨부파일아이디';												
												
COMMENT ON COLUMN MEMBER.MEM_IN_COM IS '재직자구분';												
												
COMMENT ON COLUMN MEMBER.MEM_BIR IS '생년월일';												
												
												
/* 회원구분코드 */												
CREATE TABLE MEMBER_CODE (												
	MEM_CODE NUMBER , /* 회원구분코드번호 */											
	MEM_CODE_NM VARCHAR2(200)  /* 회원구분코드명 */											
);												
												
COMMENT ON TABLE MEMBER_CODE IS '회원구분코드';												
												
COMMENT ON COLUMN MEMBER_CODE.MEM_CODE IS '회원구분코드번호';												
												
COMMENT ON COLUMN MEMBER_CODE.MEM_CODE_NM IS '회원구분코드명';												
												
												
/* 기업정보 */												
CREATE TABLE COMPANY (												
	COM_NO NUMBER , /* 기업번호 */											
	MEM_NO NUMBER , /* 회원번호 */											
	JG_CODE_NO NUMBER, /* 직군번호 */											
	COM_NM VARCHAR2(200) , /* 기업명 */											
	COM_REV NUMBER, /* 리뷰평점 */											
	COM_DATE DATE, /* 설립일 */											
	COM_CNT NUMBER, /* 사원수 */											
	COM_HPG VARCHAR2(2000), /* 홈페이지 */											
	COM_FAV NUMBER, /* 관심등록수 */											
	COM_SAL NUMBER, /* 평균연봉 */											
	COM_INTRO VARCHAR2(500), /* 회사소개 */											
	COM_ZIPCODE NUMBER , /* 우편번호 */											
	COM_ADDR1 VARCHAR2(200),  /* 상세주소1 */											
	COM_ADDR2 VARCHAR2(200)  /* 상세주소2 */											
);												
												
COMMENT ON TABLE COMPANY IS '기업정보';												
												
COMMENT ON COLUMN COMPANY.COM_NO IS '기업번호';												
												
COMMENT ON COLUMN COMPANY.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN COMPANY.JG_CODE_NO IS '직군번호';												
												
COMMENT ON COLUMN COMPANY.COM_NM IS '기업명';												
												
COMMENT ON COLUMN COMPANY.COM_REV IS '리뷰평점';												
												
COMMENT ON COLUMN COMPANY.COM_DATE IS '설립일';												
												
COMMENT ON COLUMN COMPANY.COM_CNT IS '사원수';												
												
COMMENT ON COLUMN COMPANY.COM_HPG IS '홈페이지';												
												
COMMENT ON COLUMN COMPANY.COM_FAV IS '관심등록수';												
												
COMMENT ON COLUMN COMPANY.COM_SAL IS '평균연봉';												
												
COMMENT ON COLUMN COMPANY.COM_INTRO IS '회사소개';												
												
COMMENT ON COLUMN COMPANY.COM_ZIPCODE IS '우편번호';												
												
COMMENT ON COLUMN COMPANY.COM_ADDR1 IS '상세주소1';												
COMMENT ON COLUMN COMPANY.COM_ADDR2 IS '상세주소2';												
												
												
/* 인재정보 */												
CREATE TABLE HR (												
	HR_NO NUMBER , /* 인재번호 */											
	MEM_NO NUMBER , /* 회원번호 */											
	JG_CODE_NO NUMBER, /* 직군번호 */											
	JT_CODE_NO NUMBER, /* 직무번호 */											
	HR_ZIPCODE NUMBER , /* 우편번호 */											
	HR_ADDR1 VARCHAR2(200),  /* 상세주소1 */											
	HR_ADDR2 VARCHAR2(200),  /* 상세주소2 */											
	PL_CODE_NO NUMBER  /* 개발언어 번호 */
);												
												
COMMENT ON TABLE HR IS '인재정보';												
												
COMMENT ON COLUMN HR.HR_NO IS '인재번호';												
												
COMMENT ON COLUMN HR.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN HR.JG_CODE_NO IS '직군번호';												
												
COMMENT ON COLUMN HR.JT_CODE_NO IS '직무번호';												
												
COMMENT ON COLUMN HR.HR_ZIPCODE IS '우편번호';												
												
COMMENT ON COLUMN HR.HR_ADDR1 IS '상세주소1';												
COMMENT ON COLUMN HR.HR_ADDR2 IS '상세주소2';												
COMMENT ON COLUMN HR.PL_CODE_NO IS '상세주소2';												
												
/* 경력 */												
CREATE TABLE CAREER (												
	CRR_NO NUMBER , /* 경력번호 */											
	CRR_COMP_NM VARCHAR2(200) , /* 회사명 */											
	CRR_IN_SERVICE NUMBER, /* 재직여부 */											
	JOB_NO NUMBER, /* 직무번호 */											
	CRR_RANK VARCHAR2(200), /* 직급 */											
	CRR_YEARS NUMBER  /* 경력기간 */											
);												
												
COMMENT ON TABLE CAREER IS '경력';												
												
COMMENT ON COLUMN CAREER.CRR_NO IS '경력번호';												
												
COMMENT ON COLUMN CAREER.CRR_COMP_NM IS '회사명';												
												
COMMENT ON COLUMN CAREER.CRR_IN_SERVICE IS '재직여부';												
												
COMMENT ON COLUMN CAREER.JOB_NO IS '직무번호';												
												
COMMENT ON COLUMN CAREER.CRR_RANK IS '직급';												
												
COMMENT ON COLUMN CAREER.CRR_YEARS IS '경력기간';												
												
												
/* 경력-인재 */												
CREATE TABLE CRR_HR (												
	CRR_NO NUMBER , /* 경력번호 */											
	HR_NO NUMBER  /* 인재번호 */											
);												
												
COMMENT ON TABLE CRR_HR IS '경력-인재';												
												
COMMENT ON COLUMN CRR_HR.CRR_NO IS '경력번호';												
												
COMMENT ON COLUMN CRR_HR.HR_NO IS '인재번호';												
												
												
/* 자격증 */												
CREATE TABLE CERTIFICATION (												
	CERT_CODE_NO NUMBER , /* 자격증번호 */											
	CERT_CODE_NM VARCHAR2(200)  /* 자격증명 */											
);												
												
COMMENT ON TABLE CERTIFICATION IS '자격증';												
												
COMMENT ON COLUMN CERTIFICATION.CERT_CODE_NO IS '자격증번호';												
												
COMMENT ON COLUMN CERTIFICATION.CERT_CODE_NM IS '자격증명';												
												
												
/* 자격증-인재 */												
CREATE TABLE CERT_HR (												
	CERT_CODE_NO NUMBER , /* 자격증번호 */											
	HR_NO NUMBER  /* 인재번호 */											
);												
												
COMMENT ON TABLE CERT_HR IS '자격증-인재';												
												
COMMENT ON COLUMN CERT_HR.CERT_CODE_NO IS '자격증번호';												
												
COMMENT ON COLUMN CERT_HR.HR_NO IS '인재번호';												
												
												
/* 학력-인재 */												
CREATE TABLE EDU_HR (												
	EDU_NO NUMBER , /* 학력번호 */											
	HR_NO NUMBER  /* 인재번호 */											
);												
												
COMMENT ON TABLE EDU_HR IS '학력-인재';												
												
COMMENT ON COLUMN EDU_HR.EDU_NO IS '학력번호';												
												
COMMENT ON COLUMN EDU_HR.HR_NO IS '인재번호';												
												
												
/* 학력 */												
CREATE TABLE EDU (												
	EDU_NO NUMBER , /* 학력번호 */											
	EDU_CODE_NO NUMBER, /* 학력구분코드 */											
	EDU_SCH_NM VARCHAR2(200), /* 학교명 */											
	EDU_MAJOR VARCHAR2(200), /* 전공 */											
	EDU_GRA_TOT NUMBER, /* 학점총점 */											
	EDU_GRA_AVG NUMBER /* 학점평균 */											
);												
												
COMMENT ON TABLE EDU IS '학력';												
												
COMMENT ON COLUMN EDU.EDU_NO IS '학력번호';												
												
COMMENT ON COLUMN EDU.EDU_CODE_NO IS '학력구분코드';												
												
COMMENT ON COLUMN EDU.EDU_SCH_NM IS '학교명';												
												
COMMENT ON COLUMN EDU.EDU_MAJOR IS '전공';												
												
COMMENT ON COLUMN EDU.EDU_GRA_TOT IS '학점총점';												
												
COMMENT ON COLUMN EDU.EDU_GRA_AVG IS '학점평균';												
												
												
/* 관심 */												
CREATE TABLE FAVORITE (												
	FAV_NO NUMBER , /* 관심번호 */											
	FAV_CODE NUMBER , /* 관심구분코드 */											
	HR_NO NUMBER , /* 인재번호 */											
	COM_NO NUMBER  /* 기업번호 */											
);												
												
COMMENT ON TABLE FAVORITE IS '관심';												
												
COMMENT ON COLUMN FAVORITE.FAV_NO IS '관심번호';												
												
COMMENT ON COLUMN FAVORITE.FAV_CODE IS '관심구분코드';												
												
COMMENT ON COLUMN FAVORITE.HR_NO IS '인재번호';												
												
COMMENT ON COLUMN FAVORITE.COM_NO IS '기업번호';												
												
												
/* 주문 */												
CREATE TABLE SUBSCRIBE (												
	SUB_NO NUMBER , /* 주문번호 */											
	MEM_NO NUMBER , /* 회원번호 */											
	SUB_DATE DATE , /* 결재일 */											
	SUB_PRICE NUMBER , /* 주문금액 */											
	CARD_NO NUMBER /* 카드사번호 */											
);												
												
COMMENT ON TABLE SUBSCRIBE IS '주문';												
												
COMMENT ON COLUMN SUBSCRIBE.SUB_NO IS '주문번호';												
												
COMMENT ON COLUMN SUBSCRIBE.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN SUBSCRIBE.SUB_DATE IS '결재일';												
												
COMMENT ON COLUMN SUBSCRIBE.SUB_PRICE IS '주문금액';												
												
COMMENT ON COLUMN SUBSCRIBE.CARD_NO IS '카드사번호';												
												
												
/* 카트 */												
CREATE TABLE CART (												
	SUB_NO NUMBER , /* 주문번호 */											
	PROD_NO NUMBER , /* 상품번호 */											
	PROD_PRICE NUMBER /* 상품가격 */											
);												
												
COMMENT ON TABLE CART IS '카트';												
												
COMMENT ON COLUMN CART.SUB_NO IS '주문번호';												
												
COMMENT ON COLUMN CART.PROD_NO IS '상품번호';												
												
COMMENT ON COLUMN CART.PROD_PRICE IS '상품가격';												
												
												
/* 상품 */												
CREATE TABLE PROD (												
	PROD_NO NUMBER , /* 상품번호 */											
	PROD_NM VARCHAR2(200) , /* 상품명 */											
	PROD_PRICE NUMBER , /* 상품가격 */											
	PROD_PERIOD NUMBER  /* 사용기간 */											
);												
												
COMMENT ON TABLE PROD IS '상품';												
												
COMMENT ON COLUMN PROD.PROD_NO IS '상품번호';												
												
COMMENT ON COLUMN PROD.PROD_NM IS '상품명';												
												
COMMENT ON COLUMN PROD.PROD_PRICE IS '상품가격';												
												
COMMENT ON COLUMN PROD.PROD_PERIOD IS '사용기간';												
												
												
/* 학력구분코드 */												
CREATE TABLE EDU_CODE (												
	EDU_CODE_NO NUMBER , /* 학력구분코드 */											
	DEU_CODE_NM VARCHAR2(200)  /* 학력구분코드명 */											
);												
												
COMMENT ON TABLE EDU_CODE IS '학력구분코드';												
												
COMMENT ON COLUMN EDU_CODE.EDU_CODE_NO IS '학력구분코드';												
												
COMMENT ON COLUMN EDU_CODE.DEU_CODE_NM IS '학력구분코드명';												
												
												
/* 결재이력 */												
CREATE TABLE ORD_HISTORY (												
	HST_NO NUMBER , /* 결재이력번호 */											
	SUB_NO NUMBER , /* 주문번호 */											
	ORD_DATE DATE , /* 결재일 */											
	ORD_PRICE NUMBER  /* 주문금액 */											
);												
												
COMMENT ON TABLE ORD_HISTORY IS '결재이력';												
												
COMMENT ON COLUMN ORD_HISTORY.HST_NO IS '결재이력번호';												
												
COMMENT ON COLUMN ORD_HISTORY.SUB_NO IS '주문번호';												
												
COMMENT ON COLUMN ORD_HISTORY.ORD_DATE IS '결재일';												
												
COMMENT ON COLUMN ORD_HISTORY.ORD_PRICE IS '주문금액';												
												
												
/* 카드 */												
CREATE TABLE CARD (												
	CARD_NO NUMBER , /* 카드사번호 */											
	CARD_NM VARCHAR2(200) /* 카드사명 */											
);												
												
COMMENT ON TABLE CARD IS '카드';												
												
COMMENT ON COLUMN CARD.CARD_NO IS '카드사번호';												
												
COMMENT ON COLUMN CARD.CARD_NM IS '카드사명';												
												
												
/* 캘린더태그 */												
CREATE TABLE CALENDER_TAG (												
	CAL_TAG NUMBER , /* 캘린더태그번호 */											
	CAL_TAG_NM VARCHAR2(200)  /* 캘린더태그명 */											
);												
												
COMMENT ON TABLE CALENDER_TAG IS '캘린더태그';												
												
COMMENT ON COLUMN CALENDER_TAG.CAL_TAG IS '캘린더태그번호';												
												
COMMENT ON COLUMN CALENDER_TAG.CAL_TAG_NM IS '캘린더태그명';												
												
												
/* 일정 */												
CREATE TABLE SCHEDULE (												
	SCHE_NO NUMBER , /* 일정번호 */											
	MEM_NO NUMBER , /* 회원번호 */											
	SCHE_CONT VARCHAR2(2000), /* 내용 */											
	SCHE_SDATE DATE , /* 시작일 */											
	SCHE_EDATE DATE  /* 종료일 */											
);												
												
COMMENT ON TABLE SCHEDULE IS '일정';												
												
COMMENT ON COLUMN SCHEDULE.SCHE_NO IS '일정번호';												
												
COMMENT ON COLUMN SCHEDULE.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN SCHEDULE.SCHE_CONT IS '내용';												
												
COMMENT ON COLUMN SCHEDULE.SCHE_SDATE IS '시작일';												
												
COMMENT ON COLUMN SCHEDULE.SCHE_EDATE IS '종료일';												
												
												
/* 일정-태그 */												
CREATE TABLE SCHED_TAG (												
	SCHE_NO NUMBER , /* 일정번호 */											
	CAL_TAG NUMBER  /* 캘린더태그번호 */											
);												
												
COMMENT ON TABLE SCHED_TAG IS '일정-태그';												
												
COMMENT ON COLUMN SCHED_TAG.SCHE_NO IS '일정번호';												
												
COMMENT ON COLUMN SCHED_TAG.CAL_TAG IS '캘린더태그번호';												
												
												
/* 첨부파일 */												
CREATE TABLE ATCH_FILE (												
	ATCH_FILE_ID NUMBER , /* 첨부파일아이디 */											
	CREAT_DT DATE , /* 생성일시 */											
	USE_AT NUMBER /* 사용여부 */											
);												
												
COMMENT ON TABLE ATCH_FILE IS '첨부파일';												
												
COMMENT ON COLUMN ATCH_FILE.ATCH_FILE_ID IS '첨부파일아이디';												
												
COMMENT ON COLUMN ATCH_FILE.CREAT_DT IS '생성일시';												
												
COMMENT ON COLUMN ATCH_FILE.USE_AT IS '사용여부';												
												
												
/* 첨부파일상세 */												
CREATE TABLE ATCH_FILE_DETAIL (												
	ATCH_FILE_ID NUMBER , /* 첨부파일아이디 */											
	FILE_SN NUMBER , /* 파일순번 */											
	FILE_STRE_PATH VARCHAR2(2000) , /* 파일저장경로 */											
	STRE_FILE_NM VARCHAR2(500) , /* 저장파일명 */											
	ORIGNL_FILE_NM VARCHAR2(500), /* 원본파일명 */											
	FILE_EXTSN VARCHAR2(200) , /* 파일확장자 */											
	FILE_CN CLOB, /* 파일내용 */											
	FILE_SIZE NUMBER /* 파일크기 */											
);												
												
COMMENT ON TABLE ATCH_FILE_DETAIL IS '첨부파일상세';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.ATCH_FILE_ID IS '첨부파일아이디';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.FILE_SN IS '파일순번';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.FILE_STRE_PATH IS '파일저장경로';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.STRE_FILE_NM IS '저장파일명';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.ORIGNL_FILE_NM IS '원본파일명';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.FILE_EXTSN IS '파일확장자';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.FILE_CN IS '파일내용';												
												
COMMENT ON COLUMN ATCH_FILE_DETAIL.FILE_SIZE IS '파일크기';												
												
												
/* 지원 */												
CREATE TABLE APPLY (												
	APPL_NO NUMBER , /* 지원번호 */											
	CV_NO NUMBER , /* 이력서번호 */											
	JO_NO NUMBER , /* 채용공고번호 */											
	JT_NO NUMBER  /* 직무번호 */											
);												
												
COMMENT ON TABLE APPLY IS '지원';												
												
COMMENT ON COLUMN APPLY.APPL_NO IS '지원번호';												
												
COMMENT ON COLUMN APPLY.CV_NO IS '이력서번호';												
												
COMMENT ON COLUMN APPLY.JO_NO IS '채용공고번호';												
												
COMMENT ON COLUMN APPLY.JT_NO IS '직무번호';												
												
												
/* 신고 */												
CREATE TABLE REPORT (												
	REPT_NO NUMBER , /* 신고번호 */											
	REP_NO NUMBER , /* 댓글번호 */											
	BOARD_CODE_NO NUMBER , /* 게시판번호 */											
	BOARD_NO NUMBER , /* 게시글번호 */											
	REPT_STATUS NUMBER, /* 조치상태 */											
	MEM_NO NUMBER, /* 회원번호 */											
	REPT_REASON NUMBER /* 신고사유 */											
);												
												
COMMENT ON TABLE REPORT IS '신고';												
												
COMMENT ON COLUMN REPORT.REPT_NO IS '신고번호';												
												
COMMENT ON COLUMN REPORT.REP_NO IS '댓글번호';												
												
COMMENT ON COLUMN REPORT.BOARD_CODE_NO IS '게시판번호';												
												
COMMENT ON COLUMN REPORT.BOARD_NO IS '게시글번호';												
												
COMMENT ON COLUMN REPORT.REPT_STATUS IS '조치상태';												
												
COMMENT ON COLUMN REPORT.MEM_NO IS '회원번호';												
												
COMMENT ON COLUMN REPORT.REPT_REASON IS '신고사유';												
												
												
-- 기본키 설정 --	
ALTER TABLE prog_lang			
	ADD		
constraint pk_p_p1 primary key(pl_code_no);			

ALTER TABLE CV												
	ADD											
		CONSTRAINT PK_CV										
		PRIMARY KEY (										
			CV_NO									
		);										
												
												
ALTER TABLE JOB_GROUP												
	ADD											
		CONSTRAINT PK_JOB_GROUP										
		PRIMARY KEY (										
			JG_CODE_NO									
		);										
												
ALTER TABLE JOB_TITLE												
	ADD											
		CONSTRAINT PK_JOB_TITLE										
		PRIMARY KEY (										
			JT_CODE_NO									
		);										
												
ALTER TABLE JOB_OPENING												
	ADD											
		CONSTRAINT PK_JOB_OPENING										
		PRIMARY KEY (										
			JO_NO									
		);										
												
												
ALTER TABLE BOARD_CODE												
	ADD											
		CONSTRAINT PK_BOARD_CODE										
		PRIMARY KEY (										
			BOARD_CODE_NO									
		);										
												
ALTER TABLE BOARD												
	ADD											
		CONSTRAINT PK_BOARD										
		PRIMARY KEY (										
			BOARD_NO,									
			BOARD_CODE_NO									
		);										
												
												
ALTER TABLE REPLY												
	ADD											
		CONSTRAINT PK_REPLY										
		PRIMARY KEY (										
			REP_NO									
		);										
												
												
ALTER TABLE CLIP												
	ADD											
		CONSTRAINT PK_CLIP										
		PRIMARY KEY (										
			HR_NO,									
			JO_NO									
		);										
												
												
												
ALTER TABLE REVIEW												
	ADD											
		CONSTRAINT PK_REVIEW										
		PRIMARY KEY (										
			COM_NO,									
			MEM_NO									
		);										
												
												
ALTER TABLE MEMBER												
	ADD											
		CONSTRAINT PK_MEMBER										
		PRIMARY KEY (										
			MEM_NO									
		);										
												
												
ALTER TABLE MEMBER_CODE												
	ADD											
		CONSTRAINT PK_MEMBER_CODE										
		PRIMARY KEY (										
			MEM_CODE									
		);										
												
												
ALTER TABLE COMPANY												
	ADD											
		CONSTRAINT PK_COMPANY										
		PRIMARY KEY (										
			COM_NO									
		);										
												
												
ALTER TABLE HR												
	ADD											
		CONSTRAINT PK_HR										
		PRIMARY KEY (										
			HR_NO									
		);										
												
												
ALTER TABLE CAREER												
	ADD											
		CONSTRAINT PK_CAREER										
		PRIMARY KEY (										
			CRR_NO									
		);										
												
												
ALTER TABLE CRR_HR												
	ADD											
		CONSTRAINT PK_CRR_HR										
		PRIMARY KEY (										
			CRR_NO,									
			HR_NO									
		);										
												
												
ALTER TABLE CERTIFICATION												
	ADD											
		CONSTRAINT PK_CERTIFICATION										
		PRIMARY KEY (										
			CERT_CODE_NO									
		);										
												
												
ALTER TABLE CERT_HR												
	ADD											
		CONSTRAINT PK_CERT_HR										
		PRIMARY KEY (										
			CERT_CODE_NO,									
			HR_NO									
		);										
												
												
ALTER TABLE EDU_HR												
	ADD											
		CONSTRAINT PK_EDU_HR										
		PRIMARY KEY (										
			EDU_NO,									
			HR_NO									
		);										
												
												
ALTER TABLE EDU												
	ADD											
		CONSTRAINT PK_EDU										
		PRIMARY KEY (										
			EDU_NO									
		);										
												
												
ALTER TABLE FAVORITE												
	ADD											
		CONSTRAINT PK_FAVORITE										
		PRIMARY KEY (										
			FAV_NO									
		);										
												
												
ALTER TABLE SUBSCRIBE												
	ADD											
		CONSTRAINT PK_SUBSCRIBE										
		PRIMARY KEY (										
			SUB_NO									
		);										
												
												
ALTER TABLE CART												
	ADD											
		CONSTRAINT PK_CART										
		PRIMARY KEY (										
			SUB_NO,									
			PROD_NO									
		);										
												
												
ALTER TABLE PROD												
	ADD											
		CONSTRAINT PK_PROD										
		PRIMARY KEY (										
			PROD_NO									
		);										
												
												
ALTER TABLE EDU_CODE												
	ADD											
		CONSTRAINT PK_EDU_CODE										
		PRIMARY KEY (										
			EDU_CODE_NO									
		);										
												
												
ALTER TABLE ORD_HISTORY												
	ADD											
		CONSTRAINT PK_ORD_HISTORY										
		PRIMARY KEY (										
			HST_NO									
		);										
												
												
ALTER TABLE CARD												
	ADD											
		CONSTRAINT PK_CARD										
		PRIMARY KEY (										
			CARD_NO									
		);										
												
												
ALTER TABLE CALENDER_TAG												
	ADD											
		CONSTRAINT PK_CALENDER_TAG										
		PRIMARY KEY (										
			CAL_TAG									
		);										
												
												
ALTER TABLE SCHEDULE												
	ADD											
		CONSTRAINT PK_SCHEDULE										
		PRIMARY KEY (										
			SCHE_NO									
		);										
												
												
ALTER TABLE SCHED_TAG												
	ADD											
		CONSTRAINT PK_SCHED_TAG										
		PRIMARY KEY (										
			SCHE_NO,									
			CAL_TAG									
		);										
												
												
ALTER TABLE ATCH_FILE												
	ADD											
		CONSTRAINT PK_ATCH_FILE										
		PRIMARY KEY (										
			ATCH_FILE_ID									
		);										
												
												
ALTER TABLE ATCH_FILE_DETAIL												
	ADD											
		CONSTRAINT PK_ATCH_FILE_DETAIL										
		PRIMARY KEY (										
			ATCH_FILE_ID,									
			FILE_SN									
		);										
												
												
ALTER TABLE APPLY												
	ADD											
		CONSTRAINT PK_APPLY										
		PRIMARY KEY (										
			APPL_NO									
		);										
												
												
ALTER TABLE REPORT												
	ADD											
		CONSTRAINT PK_REPORT										
		PRIMARY KEY (										
			REPT_NO									
		);										
												
												
-- 외래키 설정 --												
--ALTER TABLE CV												
--	ADD											
--		CONSTRAINT FK_HR_TO_CV										
--		FOREIGN KEY (										
--			HR_NO									
--		)										
--		REFERENCES HR (										
--			HR_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE JOB_TITLE												
--	ADD											
--		CONSTRAINT FK_JOB_GROUP_TO_JOB_TITLE										
--		FOREIGN KEY (										
--			JG_CODE_NO									
--		)										
--		REFERENCES JOB_GROUP (										
--			JG_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE JOB_OPENING												
--	ADD											
--		CONSTRAINT FK_JOB_TITLE_TO_JOB_OPENING										
--		FOREIGN KEY (										
--			JT_CODE_NO									
--		)										
--		REFERENCES JOB_TITLE (										
--			JT_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE JOB_OPENING												
--	ADD											
--		CONSTRAINT FK_JOB_GROUP_TO_JOB_OPENING										
--		FOREIGN KEY (										
--			JG_CODE_NO									
--		)										
--		REFERENCES JOB_GROUP (										
--			JG_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE JOB_OPENING												
--	ADD											
--		CONSTRAINT FK_COMPANY_TO_JOB_OPENING										
--		FOREIGN KEY (										
--			COM_NO									
--		)										
--		REFERENCES COMPANY (										
--			COM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE BOARD												
--	ADD											
--		CONSTRAINT FK_BOARD_CODE_TO_BOARD										
--		FOREIGN KEY (										
--			BOARD_CODE_NO									
--		)										
--		REFERENCES BOARD_CODE (										
--			BOARD_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE BOARD												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_BOARD										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REPLY												
--	ADD											
--		CONSTRAINT FK_BOARD_TO_REPLY										
--		FOREIGN KEY (										
--			BOARD_NO,									
--			BOARD_CODE_NO									
--		)										
--		REFERENCES BOARD (										
--			BOARD_NO,									
--			BOARD_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REPLY												
--	ADD											
--		CONSTRAINT FK_REPLY_TO_REPLY										
--		FOREIGN KEY (										
--			REP_PRNT									
--		)										
--		REFERENCES REPLY (										
--			REP_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REPLY												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_REPLY										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CLIP												
--	ADD											
--		CONSTRAINT FK_JOB_OPENING_TO_CLIP										
--		FOREIGN KEY (										
--			JO_NO									
--		)										
--		REFERENCES JOB_OPENING (										
--			JO_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CLIP												
--	ADD											
--		CONSTRAINT FK_HR_TO_CLIP										
--		FOREIGN KEY (										
--			HR_NO									
--		)										
--		REFERENCES HR (										
--			HR_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REVIEW												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_REVIEW										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REVIEW												
--	ADD											
--		CONSTRAINT FK_COMPANY_TO_REVIEW										
--		FOREIGN KEY (										
--			COM_NO									
--		)										
--		REFERENCES COMPANY (										
--			COM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE MEMBER												
--	ADD											
--		CONSTRAINT FK_MEMBER_CODE_TO_MEMBER										
--		FOREIGN KEY (										
--			MEM_CODE									
--		)										
--		REFERENCES MEMBER_CODE (										
--			MEM_CODE									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE MEMBER												
--	ADD											
--		CONSTRAINT FK_ATCH_FILE_TO_MEMBER										
--		FOREIGN KEY (										
--			ATCH_FILE_ID									
--		)										
--		REFERENCES ATCH_FILE (										
--			ATCH_FILE_ID									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE COMPANY												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_COMPANY										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE COMPANY												
--	ADD											
--		CONSTRAINT FK_JOB_GROUP_TO_COMPANY										
--		FOREIGN KEY (										
--			JG_CODE_NO									
--		)										
--		REFERENCES JOB_GROUP (										
--			JG_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE HR												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_HR										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE HR												
--	ADD											
--		CONSTRAINT FK_JOB_GROUP_TO_HR										
--		FOREIGN KEY (										
--			JG_CODE_NO									
--		)										
--		REFERENCES JOB_GROUP (										
--			JG_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE HR												
--	ADD											
--		CONSTRAINT FK_JOB_TITLE_TO_HR										
--		FOREIGN KEY (										
--			JT_CODE_NO									
--		)										
--		REFERENCES JOB_TITLE (										
--			JT_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CAREER												
--	ADD											
--		CONSTRAINT FK_JOB_TITLE_TO_CAREER										
--		FOREIGN KEY (										
--			JOB_NO									
--		)										
--		REFERENCES JOB_TITLE (										
--			JT_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CRR_HR												
--	ADD											
--		CONSTRAINT FK_CAREER_TO_CRR_HR										
--		FOREIGN KEY (										
--			CRR_NO									
--		)										
--		REFERENCES CAREER (										
--			CRR_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CRR_HR												
--	ADD											
--		CONSTRAINT FK_HR_TO_CRR_HR										
--		FOREIGN KEY (										
--			HR_NO									
--		)										
--		REFERENCES HR (										
--			HR_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CERT_HR												
--	ADD											
--		CONSTRAINT FK_CERTIFICATION_TO_CERT_HR										
--		FOREIGN KEY (										
--			CERT_CODE_NO									
--		)										
--		REFERENCES CERTIFICATION (										
--			CERT_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CERT_HR												
--	ADD											
--		CONSTRAINT FK_HR_TO_CERT_HR										
--		FOREIGN KEY (										
--			HR_NO									
--		)										
--		REFERENCES HR (										
--			HR_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE EDU_HR												
--	ADD											
--		CONSTRAINT FK_EDU_TO_EDU_HR										
--		FOREIGN KEY (										
--			EDU_NO									
--		)										
--		REFERENCES EDU (										
--			EDU_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE EDU_HR												
--	ADD											
--		CONSTRAINT FK_HR_TO_EDU_HR										
--		FOREIGN KEY (										
--			HR_NO									
--		)										
--		REFERENCES HR (										
--			HR_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE EDU												
--	ADD											
--		CONSTRAINT FK_EDU_CODE_TO_EDU										
--		FOREIGN KEY (										
--			EDU_CODE_NO									
--		)										
--		REFERENCES EDU_CODE (										
--			EDU_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE FAVORITE												
--	ADD											
--		CONSTRAINT FK_HR_TO_FAVORITE										
--		FOREIGN KEY (										
--			HR_NO									
--		)										
--		REFERENCES HR (										
--			HR_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE FAVORITE												
--	ADD											
--		CONSTRAINT FK_COMPANY_TO_FAVORITE										
--		FOREIGN KEY (										
--			COM_NO									
--		)										
--		REFERENCES COMPANY (										
--			COM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE SUBSCRIBE												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_SUBSCRIBE										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE SUBSCRIBE												
--	ADD											
--		CONSTRAINT FK_CARD_TO_SUBSCRIBE										
--		FOREIGN KEY (										
--			CARD_NO									
--		)										
--		REFERENCES CARD (										
--			CARD_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CART												
--	ADD											
--		CONSTRAINT FK_PROD_TO_CART										
--		FOREIGN KEY (										
--			PROD_NO									
--		)										
--		REFERENCES PROD (										
--			PROD_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE CART												
--	ADD											
--		CONSTRAINT FK_SUBSCRIBE_TO_CART										
--		FOREIGN KEY (										
--			SUB_NO									
--		)										
--		REFERENCES SUBSCRIBE (										
--			SUB_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE ORD_HISTORY												
--	ADD											
--		CONSTRAINT FK_SUBSCRIBE_TO_ORD_HISTORY										
--		FOREIGN KEY (										
--			SUB_NO									
--		)										
--		REFERENCES SUBSCRIBE (										
--			SUB_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE SCHEDULE												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_SCHEDULE										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE SCHED_TAG												
--	ADD											
--		CONSTRAINT FK_SCHEDULE_TO_SCHED_TAG										
--		FOREIGN KEY (										
--			SCHE_NO									
--		)										
--		REFERENCES SCHEDULE (										
--			SCHE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE SCHED_TAG												
--	ADD											
--		CONSTRAINT FK_CALENDER_TAG_TO_SCHED_TAG										
--		FOREIGN KEY (										
--			CAL_TAG									
--		)										
--		REFERENCES CALENDER_TAG (										
--			CAL_TAG									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE ATCH_FILE_DETAIL												
--	ADD											
--		CONSTRAINT FK_ATCH_FILE_TO_ATCH_FL_DTL										
--		FOREIGN KEY (										
--			ATCH_FILE_ID									
--		)										
--		REFERENCES ATCH_FILE (										
--			ATCH_FILE_ID									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE APPLY												
--	ADD											
--		CONSTRAINT FK_JOB_OPENING_TO_APPLY										
--		FOREIGN KEY (										
--			JO_NO									
--		)										
--		REFERENCES JOB_OPENING (										
--			JO_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE APPLY												
--	ADD											
--		CONSTRAINT FK_JOB_TITLE_TO_APPLY										
--		FOREIGN KEY (										
--			JT_NO									
--		)										
--		REFERENCES JOB_TITLE (										
--			JT_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE APPLY												
--	ADD											
--		CONSTRAINT FK_CV_TO_APPLY										
--		FOREIGN KEY (										
--			CV_NO									
--		)										
--		REFERENCES CV (										
--			CV_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REPORT												
--	ADD											
--		CONSTRAINT FK_BOARD_TO_REPORT										
--		FOREIGN KEY (										
--			BOARD_NO,									
--			BOARD_CODE_NO									
--		)										
--		REFERENCES BOARD (										
--			BOARD_NO,									
--			BOARD_CODE_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REPORT												
--	ADD											
--		CONSTRAINT FK_REPLY_TO_REPORT										
--		FOREIGN KEY (										
--			REP_NO									
--		)										
--		REFERENCES REPLY (										
--			REP_NO									
--		)ON DELETE CASCADE;										
--												
--ALTER TABLE REPORT												
--	ADD											
--		CONSTRAINT FK_MEMBER_TO_REPORT										
--		FOREIGN KEY (										
--			MEM_NO									
--		)										
--		REFERENCES MEMBER (										
--			MEM_NO									
--		)ON DELETE CASCADE;										
												
												
--drop table report;												
--drop table apply;												
--drop table clip;												
--												
--drop table sched_tag;												
--drop table ord_history;												
--drop table cart;												
--drop table edu_hr;												
--drop table cert_hr;												
--drop table crr_hr;												
--drop table review;												
--drop table favorite;												
--drop table reply;												
--drop table job_opening;												
--drop table cv;												
--												
--drop table board;												
--drop table schedule;												
--drop table subscribe;												
--drop table company;												
--drop table hr;												
--drop table career;												
--												
--drop table atch_file_detail;												
--drop table edu;												
--drop table member;												
--drop table job_title;												
--												
--drop table atch_file;												
--drop table calender_tag;												
--drop table card;												
--drop table prod;												
--drop table edu_code;												
--drop table certification;												
--drop table member_code;												
--drop table board_code;												
--drop table job_group;
--drop table prog_lang;
