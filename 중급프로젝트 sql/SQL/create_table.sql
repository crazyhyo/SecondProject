/* �����ǰ */
CREATE TABLE PROD (
	PROD_NO VARCHAR2(8) NOT NULL, /* ��ǰ��ȣ */
	PROD_NM VARCHAR2(20) NOT NULL, /* ��ǰ�� */
	PROD_PRICE NUMBER NOT NULL, /* ��ǰ���� */
	PROD_PERIOD NUMBER NOT NULL /* ���Ⱓ */
);

/* �з±����ڵ� */
CREATE TABLE EDU_CODE (
	EDU_CODE VARCHAR2(8) NOT NULL, /* �з±����ڵ� */
	DEU_CODE_NM VARCHAR2(80) NOT NULL /* �з±����ڵ�� */
);

/* �з� */
CREATE TABLE EDU (
	EDU_NO VARCHAR2(8) NOT NULL, /* �з¹�ȣ */
	EDU_CODE VARCHAR2(8), /* �з±����ڵ� */
	EDU_SCH_NM VARCHAR2(20), /* �б��� */
	EDU_MAJOR VARCHAR2(20), /* ���� */
	EDU_GRA_TOT NUMBER, /* �������� */
	EDU_GRA_AVG NUMBER /* ������� */
);


/* ��� */
CREATE TABLE CAREER (
	CRR_NO VARCHAR2(8) NOT NULL, /* ��¹�ȣ */
	CRR_COMP_NM VARCHAR2(20) NOT NULL, /* ȸ��� */
	CRR_IN_SERVICE NUMBER, /* �������� */
	JOB_NO VARCHAR2(8), /* ������ȣ */
	CRR_RANK VARCHAR2(8), /* ���� */
	CRR_YEARS NUMBER NOT NULL /* ��±Ⱓ */
);

/* ���� */
CREATE TABLE JOB (
	JOB_NO VARCHAR2(8) NOT NULL, /* ������ȣ */
	JOB_NM VARCHAR2(20) NOT NULL /* ������ */
);

/* �ڰ��� */
CREATE TABLE LICENSE (
	LIC_NO VARCHAR2(8) NOT NULL, /* �ڰ�����ȣ */
	LIC_NM VARCHAR2(20) NOT NULL /* �ڰ����� */
);


/* ��� */
CREATE TABLE INDUSTRY (
	IND_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	IND_NM VARCHAR2(20) NOT NULL /* ����� */
);


/* �õ� */
CREATE TABLE SIDO (
	SIDO_NO NUMBER NOT NULL, /* �õ���ȣ */
	SIDO_NM VARCHAR2(6) /* �õ��� */
);


/* ���� */
CREATE TABLE GUGUN (
	GUGUN_NO NUMBER NOT NULL, /* ������ȣ */
	SIDO_NO NUMBER NOT NULL, /* �õ���ȣ */
	GUGUN_NM VARCHAR2(30) /* ������ */
);


/* �����ȣ */
CREATE TABLE ZIPTB (
	SEQ NUMBER NOT NULL, /* �����ȣ�ĺ��� */
	ZIPCODE VARCHAR2(7) NOT NULL, /* �����ȣ */
	SIDO NUMBER NOT NULL, /* �õ���ȣ */
	GUGUN NUMBER, /* ������ȣ */
	DONG VARCHAR2(80), /* �� */
	RI VARCHAR2(80), /* �� */
	BLDG VARCHAR2(80), /* �ǹ� */
	BUNJI VARCHAR2(80) /* ���� */
);


/* ȸ�������ڵ� */
CREATE TABLE MEMBER_CODE (
	MEM_CODE NUMBER NOT NULL, /* ȸ�������ڵ��ȣ */
	MEM_CODE_NM VARCHAR2(8) NOT NULL /* ȸ�������ڵ�� */
);

/* ȸ�� */
CREATE TABLE MEMBER (
	MEM_NO VARCHAR2(8) NOT NULL, /* ȸ����ȣ */
	MEM_NM VARCHAR2(20) NOT NULL, /* ȸ���� */
	MEM_ID VARCHAR2(20) NOT NULL, /* ���̵� */
	MEM_PW VARCHAR2(12) NOT NULL, /* ��й�ȣ */
	MEM_EMAIL VARCHAR2(50) NOT NULL, /* �̸��� */
	MEM_HP VARCHAR2(20) NOT NULL, /* ��ȭ��ȣ */
	SEQ NUMBER, /* �����ȣ�ĺ��� */
	MEM_ADDR VARCHAR2(80), /* ���ּ� */
	MEM_CODE NUMBER, /* ȸ�������ڵ��ȣ */
	MEM_ACTIVE NUMBER /* Ȱ��ȭ���� */
);


/* �ֹ� */
CREATE TABLE TBL_ORDER (
	ORD_NO NUMBER NOT NULL, /* �ֹ���ȣ */
	MEM_NO VARCHAR2(8) NOT NULL, /* ȸ����ȣ */
	ORD_DATE DATE NOT NULL, /* ������ */
	ORD_PRICE NUMBER NOT NULL /* �ֹ��ݾ� */
);

/* �ֹ���ǰ */
CREATE TABLE CART (
	ORD_NO NUMBER NOT NULL, /* �ֹ���ȣ */
	PROD_NO VARCHAR2(8) NOT NULL /* ��ǰ��ȣ */
);


/* ���� */
CREATE TABLE HR (
	HR_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	MEM_NO VARCHAR2(8) NOT NULL, /* ȸ����ȣ */
	IND_NO VARCHAR2(8), /* �����ȣ */
	JOB_NO VARCHAR2(8), /* ������ȣ */
	SEQ NUMBER, /* �����ȣ�ĺ��� */
	HR_ADDR VARCHAR2(80) /* ���ּ� */
);
/* �з�-���� */
CREATE TABLE EDU_HR (
	EDU_NO VARCHAR2(8) NOT NULL, /* �з¹�ȣ */
	HR_NO VARCHAR2(8) NOT NULL /* �����ȣ */
);

/* ���-���� */
CREATE TABLE CRR_HR (
	CRR_NO VARCHAR2(8) NOT NULL, /* ��¹�ȣ */
	HR_NO VARCHAR2(8) NOT NULL /* �����ȣ */
);



/* �ڰ���-���� */
CREATE TABLE LIC_HR (
	LIC_NO VARCHAR2(8) NOT NULL, /* �ڰ�����ȣ */
	HR_NO VARCHAR2(8) NOT NULL /* �����ȣ */
);


/* �̷¼� */
CREATE TABLE RESUME (
	RSM_NO VARCHAR2(8) NOT NULL, /* �̷¼���ȣ */
	HR_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	RSM_OPEN NUMBER DEFAULT 0, /* �������� */
	RSM_SAL NUMBER, /* ���� */
	JOB_NO VARCHAR2(8), /* ������ȣ */
	IND_NO VARCHAR2(8), /* �����ȣ */
	RSM_INTRO VARCHAR2(200), /* �ڱ�Ұ�������URL */
	RSM_CMT VARCHAR2(50), /* �Ѹ��� */
	RSM_CNT NUMBER, /* ����ȸ�� */
	RSM_PIC VARCHAR2(200) /* ��������URL */
);


/* �з�-�̷¼� */
CREATE TABLE EDU_RSM (
	EDU_NO VARCHAR2(8) NOT NULL, /* �з¹�ȣ */
	RSM_NO VARCHAR2(8) NOT NULL /* �̷¼���ȣ */
);

/* ���-�̷¼� */
CREATE TABLE CRR_RSM (
	CRR_NO VARCHAR2(8) NOT NULL, /* ��¹�ȣ */
	RSM_NO VARCHAR2(8) NOT NULL /* �̷¼���ȣ */
);


/* �ڰ���-�̷¼� */
CREATE TABLE LIC_RSM (
	LIC_NO VARCHAR2(8) NOT NULL, /* �ڰ�����ȣ */
	RSM_NO VARCHAR2(8) NOT NULL /* �̷¼���ȣ */
);


/* ������� */
CREATE TABLE ENTERPRISE (
	ENT_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	MEM_NO VARCHAR2(8) NOT NULL, /* ȸ����ȣ */
	IND_NO VARCHAR2(8), /* �����ȣ */
	ENT_NM VARCHAR2(20) NOT NULL, /* ����� */
	ENT_REV NUMBER, /* �������� */
	ENT_DATE DATE, /* ������ */
	ENT_CNT NUMBER, /* ����� */
	ENT_HPG VARCHAR2(200), /* Ȩ������ */
	ENT_FAV NUMBER, /* ���ɵ�ϼ� */
	ENT_SAL NUMBER, /* ��տ��� */
	ENT_INTRO VARCHAR2(500), /* ȸ��Ұ� */
	SEQ NUMBER NOT NULL, /* �����ȣ�ĺ��� */
	ENT_ADDR VARCHAR2(80) NOT NULL /* ���ּ� */
);

/* ���� */
CREATE TABLE FAVORITE (
	FAV_NO NUMBER NOT NULL, /* ���ɹ�ȣ */
	FAV_CODE NUMBER NOT NULL, /* ���ɱ����ڵ� */
	HR_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	ENT_NO VARCHAR2(8) NOT NULL /* �����ȣ */
);

/* ä����� */
CREATE TABLE JOBPOSTING (
	JPST_NO VARCHAR2(8) NOT NULL, /* ä������ȣ */
	ENT_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	JPST_IMMED NUMBER NOT NULL, /* ���ä�뿩�� */
	JPST_SDATE DATE, /* ������ */
	JPST_EDATE DATE, /* ������ */
	IND_NO VARCHAR2(8), /* �����ȣ */
	JOB_NO VARCHAR2(8), /* ������ȣ */
	JPST_SAL NUMBER, /* ���� */
	JPST_RANK VARCHAR2(8), /* ���� */
	JPST_MTHD VARCHAR2(200), /* ������� */
	JPST_LINK VARCHAR2(200), /* ������ũ */
	JPST_CLIP NUMBER, /* ��ũ���� */
	JPST_FILE VARCHAR2(80), /* ä��������� */
	SEQ NUMBER NOT NULL, /* �����ȣ�ĺ��� */
	JPST_ADDR VARCHAR2(80) NOT NULL /* ���ּ� */
);

/* ��ũ������ */
CREATE TABLE CLIP (
	HR_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	JPST_NO VARCHAR2(8) NOT NULL /* ä������ȣ */
);

/* �Խ��� */
CREATE TABLE BULLETIN (
	BUL_NO NUMBER NOT NULL, /* �Խ��ǹ�ȣ */
	BUL_NM VARCHAR2(20) NOT NULL /* �Խ��Ǹ� */
);

/* �Խñ� */
CREATE TABLE BOARD (
	BOD_NO NUMBER NOT NULL, /* �Խñ۹�ȣ */
	BUL_NO NUMBER NOT NULL, /* �Խ��ǹ�ȣ */
	BOD_TITLE VARCHAR2(80), /* ���� */
	BOD_CONT VARCHAR2(1000), /* ���� */
	MEM_NO VARCHAR2(8), /* ȸ����ȣ */
	BOD_HIT NUMBER, /* ��ȸ�� */
	BOD_REPT NUMBER, /* �Ű�� */
	BOD_LIKE NUMBER, /* ��õ�� */
	BOD_REPL NUMBER, /* ��ۼ� */
	BOD_POP NUMBER, /* �α�Խñۿ��� */
	BOD_DATE DATE, /* �ۼ��� */
	BOD_ACTIVE NUMBER, /* Ȱ��ȭ���� */
	BOD_HEAD VARCHAR2(20) /* ���Ӹ� */
);
/* ���� */
CREATE TABLE REVIEW (
	BUL_NO NUMBER NOT NULL, /* �Խ��ǹ�ȣ */
	BOD_NO NUMBER NOT NULL, /* �Խñ۹�ȣ */
	ENT_NO VARCHAR2(8) NOT NULL, /* �����ȣ */
	REV_RATING NUMBER /* ���� */
);


/* ��� */
CREATE TABLE REPLY (
	REP_NO NUMBER NOT NULL, /* ��۹�ȣ */
	BUL_NO NUMBER NOT NULL, /* �Խ��ǹ�ȣ */
	BOD_NO NUMBER NOT NULL, /* �Խñ۹�ȣ */
	REP_SEQ NUMBER NOT NULL, /* ��ۼ��� */
	REP_LIKE NUMBER, /* ��õ�� */
	REP_CONT VARCHAR2(200), /* ���� */
	MEM_NO VARCHAR2(8), /* ȸ����ȣ */
	REP_DATE DATE, /* �ۼ��� */
	REP_NO2 NUMBER /* ������۹�ȣ */
);
