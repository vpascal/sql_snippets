 -- Just quick request for COllege of Business

SELECT 
  CAMPUS_ID, 
  ACAD_PLAN, 
  grad_term, 
  class_id, 
  class_desc, 
  grade, 
  COALESCE (FLAG_F, flag) AS final_flag 
FROM 
  (
    SELECT 
      CAMPUS_ID, 
      ACAD_PLAN, 
      grad_term, 
      class_id, 
      class_desc, 
      grade, 
      CASE WHEN (
        flag = 1 
        AND (
          grade LIKE 'W%' 
          OR grade LIKE 'F%'
        )
      ) THEN 0 END AS flag_f, 
      FLAG 
    FROM 
      -- step 1: select those who graduate with these code and in specified terms
      (
        WITH graduated (CAMPUS_ID, ACAD_PLAN, GRAD_TERM) AS (
          SELECT 
            CAMPUS_ID, 
            ACAD_PLAN, 
            TERM_CODE AS grad_term 
          FROM 
            DEGREES_AWARDED da 
          WHERE 
            ACAD_PLAN IN (
              'BB6121', 'BB6158', 'BB6137', 'BB6125', 
              'BB6124', 'BB6120', 'BB6156', 'BB6122', 
              'BB6132', 'BB6126', 'BB6127'
            ) 
            AND TERM_CODE IN (
              '20184F', '20201G', '20193F', '20194G', 
              '20203G', '20204G'
            )
        ), 
        classes (
          STUDENT_PID, CLASS_NBR, CATALOG_NBR, 
          SUBJECT, CLASS_DESC, class_id, grade
        ) AS (
          -- step 2: joining class info with class enrollment, which gives us students and what courses they took  
          SELECT 
            cce.STUDENT_PID, 
            cc.CLASS_NBR, 
            cc.CATALOG_NBR, 
            cc.SUBJECT, 
            cc.CLASS_DESC, 
            CONCAT(cc.SUBJECT, cc.CATALOG_NBR) AS class_id, 
            cce.CRSE_GRADE_OFF AS grade 
          FROM 
            CONV_CLASS cc 
            JOIN CONV_CLASS_ENROLLMENT cce ON cc.TERM_CODE = cce.TERM_CODE 
            AND cc.CLASS_NBR = cce.CLASS_NBR
        ) -- step 3: join step1 and step2
        SELECT 
          gr.CAMPUS_ID, 
          gr.ACAD_PLAN, 
          gr.grad_term, 
          cl.class_id, 
          cl.class_desc, 
          cl.grade, 
          -- create flag; additional flag for f and w grades will be done above, on top of the results
          CASE WHEN cl.class_id NOT IN (
            'ACCT4910', 'BA3910', 'BA4910', 'FIN4910', 
            'MGT4910', 'MIS4910', 'MKT4910', 
            'MKT4919', 'SASM4910'
          ) THEN 0 ELSE 1 END AS FLAG 
        FROM 
          graduated gr 
          LEFT JOIN classes cl 
          /* left join to be safe */
          ON gr.CAMPUS_ID = cl.STUDENT_PID
      )
  )
