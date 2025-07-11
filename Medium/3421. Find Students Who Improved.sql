SELECT 
  s1.student_id,
  s1.subject,
  
  -- Earliest score
  (
    SELECT s2.score
    FROM Scores s2
    WHERE s2.student_id = s1.student_id 
      AND s2.subject = s1.subject
      AND s2.exam_date = (
        SELECT MIN(s3.exam_date)
        FROM Scores s3
        WHERE s3.student_id = s1.student_id 
          AND s3.subject = s1.subject
      )
  ) AS first_score,

  -- Latest score
  (
    SELECT s4.score
    FROM Scores s4
    WHERE s4.student_id = s1.student_id 
      AND s4.subject = s1.subject
      AND s4.exam_date = (
        SELECT MAX(s5.exam_date)
        FROM Scores s5
        WHERE s5.student_id = s1.student_id 
          AND s5.subject = s1.subject
      )
  ) AS latest_score

FROM Scores s1
GROUP BY s1.student_id, s1.subject
HAVING COUNT(*) >=2 
   AND latest_score > first_score

   order by s1.student_id,s1.subject
