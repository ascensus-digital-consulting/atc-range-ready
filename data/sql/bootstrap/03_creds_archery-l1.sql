------------------------------------------------------------------------
------------------------------------------------------------------------
-- ARCHERY (LEVEL 1) CREDENTIALS 
------------------------------------------------------------------------
------------------------------------------------------------------------
INSERT INTO credentials (expires, volunteer, certification) VALUES('5/8/2024', (SELECT id FROM volunteers WHERE email = 'kathryncrandell@gmail.com'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 1)'));
INSERT INTO credentials (expires, volunteer, certification) VALUES('11/10/2024', (SELECT id FROM volunteers WHERE email = 'mstieler@gmail.com'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 1)'));
INSERT INTO credentials (expires, volunteer, certification) VALUES('3/31/2025', (SELECT id FROM volunteers WHERE email = 'waterstopdad@sbcglobal.net'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 1)'));
INSERT INTO credentials (expires, volunteer, certification) VALUES('11/19/2026', (SELECT id FROM volunteers WHERE email = 'shane.duan@gmail.com'), (SELECT id FROM certifications WHERE certification = 'Archery Instructor (Level 1)'));
