  SELECT v.id volunteerid,
         v.firstname || ' ' || v.lastname AS name,
         COALESCE(v.nraid, '-') nraid,
         cert.certification,
         cred.expires,
         v.email
    FROM volunteers v
    JOIN credentials cred
      ON v.id = cred.volunteer
    JOIN certifications cert
      ON cred.certification = cert.id
   WHERE cert.id = 1
     AND cred.expires < now();
ORDER BY v.lastname ASC, 
         v.firstname ASC;
