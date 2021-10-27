CREATE OR REPLACE VIEW OUIRUSER.IEA_DM_STU_ENRL_CD_V
AS
SELECT SECD.TERM_CODE                                                                                                                                           TERM_CODE
      ,SECD.STUDENT_PID                                                                                                                                         STUDENT_PID
      ,SCDT.CAMPUS_NAME                                                                                                                                         STUDENT_CAMPUS_NAME
      ,SCDT.CAMPUS_DETAIL_DESC                                                                                                                                  STUDENT_CAMPUS_DETAIL_DESC
      ,TERM.TERM_DESC                                                                                                                                           TERM_DESC
      ,TERM.TERM_DESC_SHORT                                                                                                                                     TERM_DESC_SHORT
      ,TERM.SNAPSHOT_TYPE                                                                                                                                       SNAPSHOT_TYPE
      ,TERM.SNAPSHOT_DATE                                                                                                                                       SNAPSHOT_DATE
      ,TERM.TERM_TAXONOMY                                                                                                                                       TERM_TAXONOMY
      ,TERM.ACAD_YEAR_FALL                                                                                                                                      ACAD_YEAR_FALL
      ,TERM.ACAD_YEAR_SUMMER                                                                                                                                    ACAD_YEAR_SUMMER
      ,TERM.TERM_SORT                                                                                                                                           TERM_SORT
      ,SECD.CAMPUS_DETAIL_CODE                                                                                                                                  STUDENT_CAMPUS_DETAIL_CODE
      ,SCDT.CAMPUS_DETAIL_SORT                                                                                                                                  STUDENT_CAMPUS_DETAIL_SORT
      ,SCDT.CAMPUS_TYPE                                                                                                                                         STUDENT_CAMPUS_TYPE
      ,SCDT.CENTER_NAME                                                                                                                                         STUDENT_CENTER_NAME
      ,SCDT.CENTER_NAME_SORT                                                                                                                                    STUDENT_CENTER_NAME_SORT
      ,SCDT.CAMPUS_LEARNING_ENV                                                                                                                                 STUDENT_CAMPUS_LEARNING_ENV
      ,SCDT.CAMPUS_LEARNING_ENV_SORT                                                                                                                            STUDENT_CAMPUS_LEARNING_ENV_SORT
      ,SECD.COHORT_CAMPUS_CODE                                                                                                                                  COHORT_CAMPUS_DETAIL_CODE
      ,SCCM.CAMPUS_DETAIL_DESC                                                                                                                                  COHORT_CAMPUS_DETAIL_DESC
      ,SCCM.CAMPUS_DETAIL_SORT                                                                                                                                  COHORT_CAMPUS_DETAIL_SORT
      ,SCCM.CAMPUS_TYPE                                                                                                                                         COHORT_CAMPUS_TYPE
      ,SCCM.CAMPUS_NAME                                                                                                                                         COHORT_CAMPUS_NAME
      ,SCCM.CENTER_NAME                                                                                                                                         COHORT_CENTER_NAME
      ,SCCM.CENTER_NAME_SORT                                                                                                                                    COHORT_CENTER_NAME_SORT
      ,SCCM.CAMPUS_LEARNING_ENV                                                                                                                                 COHORT_CAMPUS_LEARNING_ENV
      ,SCCM.CAMPUS_LEARNING_ENV_SORT                                                                                                                            COHORT_CAMPUS_LEARNING_ENV_SORT
      ,SECD.IPEDS_CAMPUS                                                                                                                                        IPEDS_CAMPUS
      ,SRNK.STUDENT_CAREER                                                                                                                                      STUDENT_CAREER
      ,SRNK.STUDENT_CAREER_SORT                                                                                                                                 STUDENT_CAREER_SORT
      ,SECD.STUDENT_RANK_CODE                                                                                                                                   STUDENT_RANK_CODE
      ,SRNK.STUDENT_RANK_DESC                                                                                                                                   STUDENT_RANK_DESC
      ,SECD.SUBSIDY_CODE                                                                                                                                        SUBSIDY_CODE
      ,SUBS.SUBSIDY_DESC                                                                                                                                        SUBSIDY_DESC
      ,SECD.ACAD_PLAN                                                                                                                                           PLAN_CODE
      ,APLN.ACAD_PLAN_DESC                                                                                                                                      ACAD_PLAN_DESC
      ,APLN.ACAD_PLAN_TYPE                                                                                                                                      ACAD_PLAN_TYPE
      ,APLN.FIELD_OF_STUDY_CODE                                                                                                                                 FIELD_OF_STUDY_CODE
      ,APLN.FIELD_OF_STUDY_DESC                                                                                                                                 FIELD_OF_STUDY_DESC
      ,APLN.CIP_CODE                                                                                                                                            CIP_CODE
      ,APLN.COLLEGE_CODE                                                                                                                                        COLLEGE_CODE
      ,APLN.COLLEGE_DESC                                                                                                                                        COLLEGE_DESC
      ,APLN.HTC_COLLEGE_CODE                                                                                                                                    HTC_COLLEGE_CODE
      ,APLN.HTC_COLLEGE_DESC                                                                                                                                    HTC_COLLEGE_DESC
      ,APHI.ACAD_PLAN_DESC                                                                                                                                      HISTORICAL_ACAD_PLAN_DESC
      ,APHI.ACAD_PLAN_TYPE                                                                                                                                      HISTORICAL_ACAD_PLAN_TYPE
      ,APHI.FIELD_OF_STUDY_CODE                                                                                                                                 HISTORICAL_FIELD_OF_STUDY_CODE
      ,APHI.FIELD_OF_STUDY_DESC                                                                                                                                 HISTORICAL_FIELD_OF_STUDY_DESC
      ,APHI.CIP_CODE                                                                                                                                            HISTORICAL_CIP_CODE
      ,APHI.COLLEGE_CODE                                                                                                                                        HISTORICAL_COLLEGE_CODE
      ,APHI.COLLEGE_DESC                                                                                                                                        HISTORICAL_COLLEGE_DESC
      ,APHI.HTC_COLLEGE_CODE                                                                                                                                    HISTORICAL_HTC_COLLEGE_CODE
      ,APHI.HTC_COLLEGE_DESC                                                                                                                                    HISTORICAL_HTC_COLLEGE_DESC
      ,SECD.SEX_CODE                                                                                                                                            SEX_CODE
      ,SEX.SEX_DESC                                                                                                                                             SEX_DESC
      ,SECD.ETHNICITY_CODE                                                                                                                                      ETHNICITY_CODE
      ,ETHN.ETHNICITY_DESC                                                                                                                                      ETHNICITY_DESC
      ,SECD.BIRTH_YEAR                                                                                                                                          BIRTH_YEAR
      ,SECD.AGE                                                                                                                                                 AGE
      ,SECD.COUNTRY_CODE                                                                                                                                        COUNTRY_CODE
      ,CTRY.COUNTRY_DESC                                                                                                                                        COUNTRY_DESC
      ,SECD.STATE_CODE                                                                                                                                          STATE_CODE
      ,STAT.STATE_DESC                                                                                                                                          STATE_DESC
      ,SECD.OHIO_COUNTY_CODE                                                                                                                                    OHIO_COUNTY_CODE
      ,OCTY.OHIO_COUNTY_DESC                                                                                                                                    OHIO_COUNTY_DESC
      ,SECD.RESIDENCY_CODE                                                                                                                                      RESIDENCY_CODE
      ,RESI.RESIDENCY_DESC                                                                                                                                      RESIDENCY_DESC
      ,SECD.LIVING_ARRANGEMENT_CODE                                                                                                                             LIVING_ARRANGEMENT_CODE
      ,LARR.LIVING_ARRANGEMENT_DESC                                                                                                                             LIVING_ARRANGEMENT_DESC
      ,SECD.CAMPUS_DETAIL_FTPT                                                                                                                                  CAMPUS_DETAIL_FTPT
      ,SECD.UNIVERSITY_FTPT                                                                                                                                     UNIVERSITY_FTPT
      ,SECD.HOURS_CARRIED                                                                                                                                       HOURS_CARRIED
      ,SECD.HOURS_PREV_CARRIED                                                                                                                                  HOURS_PREV_CARRIED
      ,SECD.HOURS_CARRIED_ALL_CAMPUSES                                                                                                                          HOURS_CARRIED_ALL_CAMPUSES
      ,SECD.NUMBER_OF_CLASSES                                                                                                                                   NUMBER_OF_CLASSES
      ,SECD.FTE                                                                                                                                                 FTE_CAMPUS_DETAIL
      ,SECD.TOTAL_HOURS                                                                                                                                         TOTAL_HOURS_CAMPUS_DETAIL
      ,SECD.TOTAL_HOURS_HIST                                                                                                                                    TOTAL_HOURS_HIST_CAMPUS_DETAIL
      ,SECD.CUR_GPA                                                                                                                                             CUR_GPA
      ,SECD.CUM_GPA                                                                                                                                             CUM_GPA
      ,SECD.PRIOR_CUR_GPA                                                                                                                                       PRIOR_CUR_GPA
      ,SECD.PRIOR_CUM_GPA                                                                                                                                       PRIOR_CUM_GPA
      ,SECD.HAS_ALL_DISTANCE_LEARNING                                                                                                                           HAS_ALL_DISTANCE_LEARNING
      ,SECD.HAS_ANY_DISTANCE_LEARNING                                                                                                                           HAS_ANY_DISTANCE_LEARNING
      ,SECD.HAS_NO_DISTANCE_LEARNING                                                                                                                            HAS_NO_DISTANCE_LEARNING
      ,SECD.DISTANCE_LEARNING_CATEGORY                                                                                                                          DISTANCE_LEARNING_CATEGORY
      ,SECD.HAS_ALL_ONLINE                                                                                                                                      HAS_ALL_ONLINE
      ,SECD.HAS_ANY_ONLINE                                                                                                                                      HAS_ANY_ONLINE
      ,SECD.HAS_NO_ONLINE                                                                                                                                       HAS_NO_ONLINE
      ,SECD.ONLINE_CATEGORY                                                                                                                                     ONLINE_CATEGORY
      ,SECD.HAS_ANY_REGIONAL_CAMPUS                                                                                                                             HAS_ANY_REGIONAL_CAMPUS
      ,SECD.HAS_MULTIPLE_CAMPUSES                                                                                                                               HAS_MULTIPLE_CAMPUSES
      ,SECD.HAS_MULTIPLE_CAMPUS_DETAILS                                                                                                                         HAS_MULTIPLE_CAMPUS_DETAILS
      ,SECD.IS_PRIMARY_CAMPUS                                                                                                                                   IS_PRIMARY_CAMPUS
      ,SECD.IS_PRIMARY_CAMPUS_DETAIL                                                                                                                            IS_PRIMARY_CAMPUS_DETAIL
      ,SECD.IS_NEW_FRESHMAN                                                                                                                                     IS_NEW_FRESHMAN
      ,SECD.IS_NEW_TRANSFER                                                                                                                                     IS_NEW_TRANSFER
      ,SECD.IS_CONTINUING                                                                                                                                       IS_CONTINUING
      ,SECD.IS_DEGREE_SEEKING                                                                                                                                   IS_DEGREE_SEEKING
      ,SECD.IS_NEW_UGRD_NONDEGREE                                                                                                                               IS_NEW_UGRD_NONDEGREE
      ,SECD.IS_NEW_GRADUATE                                                                                                                                     IS_NEW_GRADUATE
      ,SECD.IS_NEW_MEDICAL                                                                                                                                      IS_NEW_MEDICAL
      ,SECD.NEW_STUDENT_CATEGORY                                                                                                                                NEW_STUDENT_CATEGORY
      ,SECD.HTC_FLAG                                                                                                                                            HTC_FLAG
      ,SECD.FIRSTGEN_NO_4YR_FLAG                                                                                                                                FIRSTGEN_NO_4YR_FLAG
  FROM OUBIUSER.IR_STUDENT_ENROLLMENT_CD_V   SECD
  JOIN OUBIUSER.IR_TERM_V                    TERM
    ON SECD.TERM_CODE                      = TERM.TERM_CODE
  JOIN OUBIUSER.IR_STUDENT_CAMPUS_DETAIL_V   SCDT
    ON SECD.CAMPUS_DETAIL_CODE             = SCDT.CAMPUS_DETAIL_CODE
  LEFT OUTER
  JOIN OUBIUSER.IR_STUDENT_COHORT_CAMPUS_V   SCCM
    ON SECD.COHORT_CAMPUS_CODE             = SCCM.CAMPUS_DETAIL_CODE
  JOIN OUBIUSER.IR_STUDENT_RANK_V            SRNK
    ON SECD.STUDENT_RANK_CODE              = SRNK.STUDENT_RANK_CODE
  JOIN OUBIUSER.IR_SUBSIDY_V                 SUBS
    ON SECD.SUBSIDY_CODE                   = SUBS.SUBSIDY_CODE
  JOIN OUBIUSER.IR_ACAD_PLAN_V               APLN
    ON SECD.ACAD_PLAN                      = APLN.ACAD_PLAN
  JOIN OUBIUSER.IR_ACAD_PLAN_HIST_V          APHI
    ON SECD.ACAD_PLAN                      = APHI.ACAD_PLAN
   AND SECD.TERM_CODE                      = APHI.TERM_CODE
  JOIN OUBIUSER.IR_SEX_V                     SEX
    ON SECD.SEX_CODE                       = SEX.SEX_CODE
  JOIN OUBIUSER.IR_ETHNICITY_V               ETHN
    ON SECD.ETHNICITY_CODE                 = ETHN.ETHNICITY_CODE
  LEFT OUTER
  JOIN OUBIUSER.IR_COUNTRY_V                 CTRY
    ON SECD.COUNTRY_CODE                   = CTRY.COUNTRY_CODE
  LEFT OUTER
  JOIN OUBIUSER.IR_STATE_V                   STAT
    ON SECD.STATE_CODE                     = STAT.STATE_CODE
  LEFT OUTER
  JOIN OUBIUSER.IR_OHIO_COUNTY_V             OCTY
    ON SECD.OHIO_COUNTY_CODE               = OCTY.OHIO_COUNTY_CODE
  JOIN OUBIUSER.IR_RESIDENCY_V               RESI
    ON SECD.RESIDENCY_CODE                 = RESI.RESIDENCY_CODE
  JOIN OUBIUSER.IR_LIVING_ARRANGEMENT_V      LARR
    ON SECD.LIVING_ARRANGEMENT_CODE        = LARR.LIVING_ARRANGEMENT_CODE
 WHERE SUBSTR(SECD.TERM_CODE, 6, 1)       IN ('C', 'F', 'W', 'S');

GRANT SELECT ON OUIRUSER.IEA_DM_STU_ENRL_CD_V TO IEA_READ_ROLE;