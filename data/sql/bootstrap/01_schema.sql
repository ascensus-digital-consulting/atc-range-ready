------------------------------------------------------------------------
------------------------------------------------------------------------
-- BOOTSTRAP 
------------------------------------------------------------------------
------------------------------------------------------------------------
-- Sanitize
DROP TABLE IF EXISTS credentials;
DROP TABLE IF EXISTS certifications;
DROP TABLE IF EXISTS issuingauthorities;
DROP TABLE IF EXISTS volunteers;

-- Volunteers
CREATE TABLE volunteers (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phonenumber VARCHAR(50),
    nraid VARCHAR(50)
);

-- Issuing authorities
CREATE TABLE issuingauthorities (
  id SERIAL PRIMARY KEY,
  issuingauthority VARCHAR(100) NOT NULL
);
INSERT INTO issuingauthorities (issuingauthority) VALUES ('NRA');
INSERT INTO issuingauthorities (issuingauthority) VALUES ('Scouting America');
INSERT INTO issuingauthorities (issuingauthority) VALUES ('USA Archery');

-- Certifcations
CREATE TABLE certifications (
    id SERIAL PRIMARY KEY,
    certification VARCHAR(100) NOT NULL,
    issuingauthority INTEGER NOT NULL REFERENCES issuingauthorities
);
INSERT INTO certifications (certification, issuingauthority) VALUES ('Rifle Instructor', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'NRA'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Pistol Instructor', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'NRA'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Shotgun Instructor', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'NRA'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Muzzleloading Instructor', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'NRA'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Training Counselor', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'NRA'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Range Safety Officer', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'NRA'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Chief Range Safety Officer', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'NRA'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('CS31 Cub Archery Rangemaster', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'Scouting America'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('CS32 Cub BB Gun Rangemaster', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'Scouting America'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Archery Instructor (Level 1)', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'USA Archery'));
INSERT INTO certifications (certification, issuingauthority) VALUES ('Archery Instructor (Level 2)', (SELECT id FROM issuingauthorities WHERE issuingauthority = 'USA Archery'));

-- Credentials
CREATE TABLE credentials (
    id SERIAL PRIMARY KEY,
    volunteer INTEGER NOT NULL REFERENCES volunteers,
    certification INTEGER NOT NULL REFERENCES certifications,
    expires DATE NOT NULL
);
