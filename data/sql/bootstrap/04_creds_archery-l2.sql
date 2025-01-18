------------------------------------------------------------------------
------------------------------------------------------------------------
-- ARCHERY (LEVEL 2) CREDENTIALS 
------------------------------------------------------------------------
------------------------------------------------------------------------
INSERT INTO credentials (expires, volunteer, certification) VALUES('4/18/2024', (SELECT id FROM volunteers WHERE email = 'dianahu@kenthu.net'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 2)'));
INSERT INTO credentials (expires, volunteer, certification) VALUES('5/3/2024', (SELECT id FROM volunteers WHERE email = 'glennjo2@gmail.com'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 2)'));
INSERT INTO credentials (expires, volunteer, certification) VALUES('4/26/2027', (SELECT id FROM volunteers WHERE email = 'slpyka@gmail.com'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 2)'));
INSERT INTO credentials (expires, volunteer, certification) VALUES('5/8/2027', (SELECT id FROM volunteers WHERE email = 'cornochriste@hotmail.com'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 2)'));
