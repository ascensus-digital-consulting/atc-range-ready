  SELECT v.id volunteerid,
         v.firstname || ' ' || v.lastname AS name,
         COALESCE(v.nraid, '-') nraid,
         cert.certification,
         cred.expires,
         v.email
    FROM volunteers v
    JOIN credentials cred
      ON v.id = cred.volunteer     JOIN certifications cert
      ON cred.certification = cert.id
     AND cred.expires < now() + INTERVAL '30 days'
     AND cred.expires >= now()
ORDER BY cred.expires ASC;
