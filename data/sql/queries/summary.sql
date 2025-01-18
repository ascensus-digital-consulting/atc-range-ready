   SELECT cert.certification,
          COALESCE(SUM(CASE 
                       WHEN cred.expires >= now() THEN 1 
                       ELSE 0 
                       END), 0) AS unexpiredcount,
          COALESCE(SUM(CASE 
                       WHEN cred.expires < now() THEN 1 
                       ELSE 0 
                       END), 0) AS expiredcount
     FROM certifications AS cert
LEFT JOIN credentials AS cred 
       ON cert.id = cred.certification
 GROUP BY cert.certification
 ORDER BY cert.certification ASC;
