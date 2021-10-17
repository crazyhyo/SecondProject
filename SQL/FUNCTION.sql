create or replace function fn_get_edu_code_by_hr_no(
    pn_hr_no    hr.hr_no    %type)
    RETURN number
is
    VN_EDU_CODE     EDU_CODE.edu_code_NO   %type   := 0;
    VN_EDU_NO       EDU.EDU_CODE_NO          %TYPE;
    VN_COUNT        NUMBER  := 0;
    VN_RES          NUMBER  := 0;
begin
    select COUNT(*) INTO VN_COUNT
      from edu_HR
     WHERE HR_NO = PN_HR_NO;

    IF VN_COUNT > 0 THEN
        FOR REC1 IN (SELECT EDU_NO
                       FROM EDU_HR
                      WHERE HR_NO = PN_HR_NO)
        LOOP
            SELECT EDU_CODE_NO INTO VN_EDU_CODE
              FROM EDU
             WHERE EDU_NO = REC1.EDU_NO;

             IF VN_EDU_CODE > VN_RES THEN
                VN_RES := VN_EDU_CODE;
             END IF;
        END LOOP;
    END IF;

    RETURN VN_RES;

end;

CREATE OR REPLACE FUNCTION FN_GET_SAL_TYPE_JO(
    PN_JO_NO        JOB_OPENING.JO_NO   %TYPE)
    RETURN NUMBER
IS
    VN_CNT          NUMBER  := 0;
    VN_SAL_TYPE     NUMBER  := 0;
    VN_SAL          NUMBER  := 0;
BEGIN
    
    SELECT COUNT(*) INTO VN_CNT
      FROM JOB_OPENING;
    
    IF VN_CNT > 0 THEN
        SELECT CASE WHEN JO_SAL = 0 THEN 0
                    WHEN JO_SAL >= 0 AND JO_SAL < 2000 THEN 1
                    WHEN JO_SAL >= 2000 AND JO_SAL < 2500 THEN 2
                    WHEN JO_SAL >= 2500 AND JO_SAL < 3000 THEN 3
                    WHEN JO_SAL >= 3000 AND JO_SAL < 4000 THEN 4
                    WHEN JO_SAL >= 4000 AND JO_SAL < 5000 THEN 5
                    WHEN JO_SAL >= 5000 THEN 6
               END CASE
            INTO VN_SAL_TYPE
          FROM JOB_OPENING
         WHERE JO_NO = PN_JO_NO;
        
    END IF;
    
    RETURN VN_SAL_TYPE;
END;

SELECT FN_GET_SAL_TYPE_JO(JO_NO) AS SAL_TYPE
  FROM JOB_OPENING;

SELECT CASE WHEN JO_SAL = 0 THEN 0
                    WHEN JO_SAL >= 0 AND JO_SAL < 2000 THEN 1
                    WHEN JO_SAL >= 2000 AND JO_SAL < 2500 THEN 2
                    WHEN JO_SAL >= 2500 AND JO_SAL < 3000 THEN 3
                    WHEN JO_SAL >= 3000 AND JO_SAL < 4000 THEN 4
                    WHEN JO_SAL >= 4000 AND JO_SAL < 5000 THEN 5
                    WHEN JO_SAL >= 5000 THEN 6
               END CASE
               
          FROM JOB_OPENING;

CREATE OR REPLACE VIEW V_JO_SEARCH
AS
SELECT
    jo_no,
    jo_title,
    com_no,
    jo_sdate,
    jo_edate,
    jg_code_no,
    jt_code_no,
    jo_sal,
    jo_rank,
    jo_mthd,
    jo_link,
    jo_clip,
    jo_file,
    jo_zipcode,
    jo_addr1,
    jo_addr2,
    pl_code_no,
    FN_GET_SAL_TYPE_JO(JO_NO) AS SAL_TYPE,
    fn_get_state_jo(JO_NO)  AS  STATE
FROM
    job_opening
WITH READ ONLY;

SELECT * FROM V_JO_SEARCH;

SELECT *
  FROM JOB_OPENING B
WHERE EXISTS(SELECT JO_NO
  FROM V_JO_SEARCH A
 WHERE A.JG_CODE_NO = 1
   AND A.JT_CODE_NO = 3
   AND A.PL_CODE_NO = 4
   AND A.SAL_TYPE = 1
   AND A.JO_NO = B.JO_NO);

COMMIT;


CREATE OR REPLACE FUNCTION FN_GET_STATE_JO(
    PN_JO_NO    JOB_OPENING.JO_NO %TYPE)
    RETURN NUMBER
IS
    VN_STATE    NUMBER  := 0;
    VN_CNT      NUMBER  := 0;
BEGIN
    SELECT COUNT(*) INTO VN_CNT
      FROM JOB_OPENING;
    
    IF  VN_CNT  > 0 THEN
        SELECT case when (sysdate - to_date(jo_sdate)) * (to_date(jo_edate) - sysdate) > 0 then 0
                    when ((sysdate - to_date(jo_sdate)) * (to_date(jo_edate) - sysdate)) * (sysdate - to_date(jo_sdate)) < 0 then 1
                    when ((sysdate - to_date(jo_sdate)) * (to_date(jo_edate) - sysdate)) * (to_date(jo_edate) - sysdate) < 0 then 2
                    END STATE INTO VN_STATE
          FROM JOB_OPENING
         WHERE JO_NO = PN_JO_NO;
    END IF;
    
    RETURN VN_STATE;
END;



    
select case when (sysdate - to_date(jo_sdate)) * (to_date(jo_edate) - sysdate) > 0 then '진행중'
            when ((sysdate - to_date(jo_sdate)) * (to_date(jo_edate) - sysdate)) * (sysdate - to_date(jo_sdate)) < 0 then '마감'
            when ((sysdate - to_date(jo_sdate)) * (to_date(jo_edate) - sysdate)) * (to_date(jo_edate) - sysdate) < 0 then '예정'
            else '???'
            end asdf,
       sysdate,
       to_date(jo_sdate),
       to_date(jo_edate)
  from job_opening
 order by asdf;