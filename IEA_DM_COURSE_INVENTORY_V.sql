CREATE OR REPLACE VIEW OUIRUSER.IEA_DM_COURSE_INVENTORY_V
AS
SELECT CINV.STRM                                                                                                                                                STRM
      ,CINV.STRM_VERSION                                                                                                                                        STRM_VERSION
      ,CINV.SUBJECT_DESCRFORMAL                                                                                                                                 SUBJECT_DESCRFORMAL
      ,CINV.CRSE_SUBJECT                                                                                                                                        CRSE_SUBJECT
      ,CINV.CRSE_CATALOG_NBR                                                                                                                                    CRSE_CATALOG_NBR
      ,CINV.CRSE_CIP_CODE                                                                                                                                       CRSE_CIP_CODE
      ,CINV.HEI_COURSE_LEVEL                                                                                                                                    HEI_COURSE_LEVEL
      ,XHCL.HEI_COURSE_LEVEL_CODE_DESCR                                                                                                                         HEI_COURSE_LEVEL_CODE_DESCR
      ,CINV.CRSE_DESCR                                                                                                                                          CRSE_DESCR
      ,CINV.CRSE_UNITS_MINIMUM                                                                                                                                  CRSE_UNITS_MINIMUM
      ,CINV.CRSE_UNITS_MAXIMUM                                                                                                                                  CRSE_UNITS_MAXIMUM
      ,CINV.HEI_SUBSIDY_ELIGIBLE                                                                                                                                HEI_SUBSIDY_ELIGIBLE
      ,CINV.DEPARTMENT_CODE                                                                                                                                     DEPARTMENT_CODE
      ,CLDE.DEPARTMENT_DESC                                                                                                                                     DEPARTMENT_DESC
      ,CINV.COURSE_SUBSIDY_CODE                                                                                                                                 COURSE_SUBSIDY_CODE
      ,CINV.COURSE_TAXONOMY_CODE                                                                                                                                COURSE_TAXONOMY_CODE
      ,CINV.HEI_SUBSIDY_MODEL_CODE                                                                                                                              HEI_SUBSIDY_MODEL_CODE
      ,CINV.HEI_SUBSIDY_MODEL_SUBJ                                                                                                                              HEI_SUBSIDY_MODEL_SUBJ
      ,CINV.SNAPSHOT_DATE                                                                                                                                       SNAPSHOT_DATE
  FROM COURSE_INVENTORY               CINV
  LEFT OUTER
  JOIN XREF_HEI_COURSE_LEVEL_V        XHCL
    ON CINV.HEI_COURSE_LEVEL        = XHCL.HEI_COURSE_LEVEL_CODE
  LEFT OUTER
  JOIN (
        SELECT *
          FROM CONV_L_DEPARTMENT
         WHERE TERM_CODE            = (SELECT MAX(TERM_CODE)
                                         FROM CONV_L_DEPARTMENT
                                        WHERE SUBSTR(TERM_CODE, 6, 1) IN ('C', 'F'))
       )                              CLDE
    ON CINV.DEPARTMENT_CODE         = CLDE.DEPARTMENT_CODE
  LEFT OUTER
  JOIN TERM_LOOKUP                    TLOO
    ON CINV.STRM                    = TLOO.STRM
   AND SUBSTR(CLDE.TERM_CODE, 1, 5) = TLOO.TERM_CODE
 WHERE CINV.STRM_VERSION            = (SELECT MAX(CIN2.STRM_VERSION)
                                         FROM COURSE_INVENTORY   CIN2
                                        WHERE CIN2.STRM        = CINV.STRM);

GRANT SELECT ON OUIRUSER.IEA_DM_COURSE_INVENTORY_V TO IEA_READ_ROLE;