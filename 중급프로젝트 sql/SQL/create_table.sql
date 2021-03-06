/* 광고상품 */
CREATE TABLE PROD (
	PROD_NO VARCHAR2(8) NOT NULL, /* 상품번호 */
	PROD_NM VARCHAR2(20) NOT NULL, /* 상품명 */
	PROD_PRICE NUMBER NOT NULL, /* 상품가격 */
	PROD_PERIOD NUMBER NOT NULL /* 사용기간 */
);

/* 학력구분코드 */
CREATE TABLE EDU_CODE (
	EDU_CODE VARCHAR2(8) NOT NULL, /* 학력구분코드 */
	DEU_CODE_NM VARCHAR2(80) NOT NULL /* 학력구분코드명 */
);

/* 학력 */
CREATE TABLE EDU (
	EDU_NO VARCHAR2(8) NOT NULL, /* 학력번호 */
	EDU_CODE VARCHAR2(8), /* 학력구분코드 */
	EDU_SCH_NM VARCHAR2(20), /* 학교명 */
	EDU_MAJOR VARCHAR2(20), /* 전공 */
	EDU_GRA_TOT NUMBER, /* 학점총점 */
	EDU_GRA_AVG NUMBER /* 학점평균 */
);


/* 경력 */
CREATE TABLE CAREER (
	CRR_NO VARCHAR2(8) NOT NULL, /* 경력번호 */
	CRR_COMP_NM VARCHAR2(20) NOT NULL, /* 회사명 */
	CRR_IN_SERVICE NUMBER, /* 재직여부 */
	JOB_NO VARCHAR2(8), /* 직무번호 */
	CRR_RANK VARCHAR2(8), /* 직급 */
	CRR_YEARS NUMBER NOT NULL /* 경력기간 */
);

/* 직무 */
CREATE TABLE JOB (
	JOB_NO VARCHAR2(8) NOT NULL, /* 직무번호 */
	JOB_NM VARCHAR2(20) NOT NULL /* 직무명 */
);

/* 자격증 */
CREATE TABLE LICENSE (
	LIC_NO VARCHAR2(8) NOT NULL, /* 자격증번호 */
	LIC_NM VARCHAR2(20) NOT NULL /* 자격증명 */
);


/* 산업 */
CREATE TABLE INDUSTRY (
	IND_NO VARCHAR2(8) NOT NULL, /* 산업번호 */
	IND_NM VARCHAR2(20) NOT NULL /* 산업명 */
);


/* 시도 */
CREATE TABLE SIDO (
	SIDO_NO NUMBER NOT NULL, /* 시도번호 */
	SIDO_NM VARCHAR2(6) /* 시도명 */
);


/* 구군 */
CREATE TABLE GUGUN (
	GUGUN_NO NUMBER NOT NULL, /* 구군번호 */
	SIDO_NO NUMBER NOT NULL, /* 시도번호 */
	GUGUN_NM VARCHAR2(30) /* 구군명 */
);


/* 우편번호 */
CREATE TABLE ZIPTB (
	SEQ NUMBER NOT NULL, /* 우편번호식별자 */
	ZIPCODE VARCHAR2(7) NOT NULL, /* 우편번호 */
	SIDO NUMBER NOT NULL, /* 시도번호 */
	GUGUN NUMBER, /* 구군번호 */
	DONG VARCHAR2(80), /* 동 */
	RI VARCHAR2(80), /* 리 */
	BLDG VARCHAR2(80), /* 건물 */
	BUNJI VARCHAR2(80) /* 번지 */
);


/* 회원구분코드 */
CREATE TABLE MEMBER_CODE (
	MEM_CODE NUMBER NOT NULL, /* 회원구분코드번호 */
	MEM_CODE_NM VARCHAR2(8) NOT NULL /* 회원구분코드명 */
);

/* 회원 */
CREATE TABLE MEMBER (
	MEM_NO VARCHAR2(8) NOT NULL, /* 회원번호 */
	MEM_NM VARCHAR2(20) NOT NULL, /* 회원명 */
	MEM_ID VARCHAR2(20) NOT NULL, /* 아이디 */
	MEM_PW VARCHAR2(12) NOT NULL, /* 비밀번호 */
	MEM_EMAIL VARCHAR2(50) NOT NULL, /* 이메일 */
	MEM_HP VARCHAR2(20) NOT NULL, /* 전화번호 */
	SEQ NUMBER, /* 우편번호식별자 */
	MEM_ADDR VARCHAR2(80), /* 상세주소 */
	MEM_CODE NUMBER, /* 회원구분코드번호 */
	MEM_ACTIVE NUMBER /* 활성화여부 */
);


/* 주문 */
CREATE TABLE TBL_ORDER (
	ORD_NO NUMBER NOT NULL, /* 주문번호 */
	MEM_NO VARCHAR2(8) NOT NULL, /* 회원번호 */
	ORD_DATE DATE NOT NULL, /* 결재일 */
	ORD_PRICE NUMBER NOT NULL /* 주문금액 */
);

/* 주문상품 */
CREATE TABLE CART (
	ORD_NO NUMBER NOT NULL, /* 주문번호 */
	PROD_NO VARCHAR2(8) NOT NULL /* 상품번호 */
);


/* 인재 */
CREATE TABLE HR (
	HR_NO VARCHAR2(8) NOT NULL, /* 인재번호 */
	MEM_NO VARCHAR2(8) NOT NULL, /* 회원번호 */
	IND_NO VARCHAR2(8), /* 산업번호 */
	JOB_NO VARCHAR2(8), /* 직무번호 */
	SEQ NUMBER, /* 우편번호식별자 */
	HR_ADDR VARCHAR2(80) /* 상세주소 */
);
/* 학력-인재 */
CREATE TABLE EDU_HR (
	EDU_NO VARCHAR2(8) NOT NULL, /* 학력번호 */
	HR_NO VARCHAR2(8) NOT NULL /* 인재번호 */
);

/* 경력-인재 */
CREATE TABLE CRR_HR (
	CRR_NO VARCHAR2(8) NOT NULL, /* 경력번호 */
	HR_NO VARCHAR2(8) NOT NULL /* 인재번호 */
);



/* 자격증-인재 */
CREATE TABLE LIC_HR (
	LIC_NO VARCHAR2(8) NOT NULL, /* 자격증번호 */
	HR_NO VARCHAR2(8) NOT NULL /* 인재번호 */
);


/* 이력서 */
CREATE TABLE RESUME (
	RSM_NO VARCHAR2(8) NOT NULL, /* 이력서번호 */
	HR_NO VARCHAR2(8) NOT NULL, /* 인재번호 */
	RSM_OPEN NUMBER DEFAULT 0, /* 공개여부 */
	RSM_SAL NUMBER, /* 연봉 */
	JOB_NO VARCHAR2(8), /* 직무번호 */
	IND_NO VARCHAR2(8), /* 산업번호 */
	RSM_INTRO VARCHAR2(200), /* 자기소개서파일URL */
	RSM_CMT VARCHAR2(50), /* 한마디 */
	RSM_CNT NUMBER, /* 열람회수 */
	RSM_PIC VARCHAR2(200) /* 사진파일URL */
);


/* 학력-이력서 */
CREATE TABLE EDU_RSM (
	EDU_NO VARCHAR2(8) NOT NULL, /* 학력번호 */
	RSM_NO VARCHAR2(8) NOT NULL /* 이력서번호 */
);

/* 경력-이력서 */
CREATE TABLE CRR_RSM (
	CRR_NO VARCHAR2(8) NOT NULL, /* 경력번호 */
	RSM_NO VARCHAR2(8) NOT NULL /* 이력서번호 */
);


/* 자격증-이력서 */
CREATE TABLE LIC_RSM (
	LIC_NO VARCHAR2(8) NOT NULL, /* 자격증번호 */
	RSM_NO VARCHAR2(8) NOT NULL /* 이력서번호 */
);


/* 기업정보 */
CREATE TABLE ENTERPRISE (
	ENT_NO VARCHAR2(8) NOT NULL, /* 기업번호 */
	MEM_NO VARCHAR2(8) NOT NULL, /* 회원번호 */
	IND_NO VARCHAR2(8), /* 산업번호 */
	ENT_NM VARCHAR2(20) NOT NULL, /* 기업명 */
	ENT_REV NUMBER, /* 리뷰평점 */
	ENT_DATE DATE, /* 설립일 */
	ENT_CNT NUMBER, /* 사원수 */
	ENT_HPG VARCHAR2(200), /* 홈페이지 */
	ENT_FAV NUMBER, /* 관심등록수 */
	ENT_SAL NUMBER, /* 평균연봉 */
	ENT_INTRO VARCHAR2(500), /* 회사소개 */
	SEQ NUMBER NOT NULL, /* 우편번호식별자 */
	ENT_ADDR VARCHAR2(80) NOT NULL /* 상세주소 */
);

/* 관심 */
CREATE TABLE FAVORITE (
	FAV_NO NUMBER NOT NULL, /* 관심번호 */
	FAV_CODE NUMBER NOT NULL, /* 관심구분코드 */
	HR_NO VARCHAR2(8) NOT NULL, /* 인재번호 */
	ENT_NO VARCHAR2(8) NOT NULL /* 기업번호 */
);

/* 채용공고 */
CREATE TABLE JOBPOSTING (
	JPST_NO VARCHAR2(8) NOT NULL, /* 채용공고번호 */
	ENT_NO VARCHAR2(8) NOT NULL, /* 기업번호 */
	JPST_IMMED NUMBER NOT NULL, /* 상시채용여부 */
	JPST_SDATE DATE, /* 시작일 */
	JPST_EDATE DATE, /* 종료일 */
	IND_NO VARCHAR2(8), /* 산업번호 */
	JOB_NO VARCHAR2(8), /* 직무번호 */
	JPST_SAL NUMBER, /* 연봉 */
	JPST_RANK VARCHAR2(8), /* 직급 */
	JPST_MTHD VARCHAR2(200), /* 접수방법 */
	JPST_LINK VARCHAR2(200), /* 지원링크 */
	JPST_CLIP NUMBER, /* 스크랩수 */
	JPST_FILE VARCHAR2(80), /* 채용공고파일 */
	SEQ NUMBER NOT NULL, /* 우편번호식별자 */
	JPST_ADDR VARCHAR2(80) NOT NULL /* 상세주소 */
);

/* 스크랩공고 */
CREATE TABLE CLIP (
	HR_NO VARCHAR2(8) NOT NULL, /* 인재번호 */
	JPST_NO VARCHAR2(8) NOT NULL /* 채용공고번호 */
);

/* 게시판 */
CREATE TABLE BULLETIN (
	BUL_NO NUMBER NOT NULL, /* 게시판번호 */
	BUL_NM VARCHAR2(20) NOT NULL /* 게시판명 */
);

/* 게시글 */
CREATE TABLE BOARD (
	BOD_NO NUMBER NOT NULL, /* 게시글번호 */
	BUL_NO NUMBER NOT NULL, /* 게시판번호 */
	BOD_TITLE VARCHAR2(80), /* 제목 */
	BOD_CONT VARCHAR2(1000), /* 내용 */
	MEM_NO VARCHAR2(8), /* 회원번호 */
	BOD_HIT NUMBER, /* 조회수 */
	BOD_REPT NUMBER, /* 신고수 */
	BOD_LIKE NUMBER, /* 추천수 */
	BOD_REPL NUMBER, /* 댓글수 */
	BOD_POP NUMBER, /* 인기게시글여부 */
	BOD_DATE DATE, /* 작성일 */
	BOD_ACTIVE NUMBER, /* 활성화여부 */
	BOD_HEAD VARCHAR2(20) /* 말머리 */
);
/* 리뷰 */
CREATE TABLE REVIEW (
	BUL_NO NUMBER NOT NULL, /* 게시판번호 */
	BOD_NO NUMBER NOT NULL, /* 게시글번호 */
	ENT_NO VARCHAR2(8) NOT NULL, /* 기업번호 */
	REV_RATING NUMBER /* 평점 */
);


/* 댓글 */
CREATE TABLE REPLY (
	REP_NO NUMBER NOT NULL, /* 댓글번호 */
	BUL_NO NUMBER NOT NULL, /* 게시판번호 */
	BOD_NO NUMBER NOT NULL, /* 게시글번호 */
	REP_SEQ NUMBER NOT NULL, /* 댓글순번 */
	REP_LIKE NUMBER, /* 추천수 */
	REP_CONT VARCHAR2(200), /* 내용 */
	MEM_NO VARCHAR2(8), /* 회원번호 */
	REP_DATE DATE, /* 작성일 */
	REP_NO2 NUMBER /* 상위댓글번호 */
);
