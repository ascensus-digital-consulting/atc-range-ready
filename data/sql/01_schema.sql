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
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Abreu','Jeff','jcabreu@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Abreu','Lydia','lydsarah@Hotmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Adam','Roy','n6fun@pacbell.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Adams','David','darktrooperd@comcast.net','707-980-4778');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Amaya','Mario','mario.sloan.mit@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Anderson','Toby','baybolt@pacbell.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Andrews','Mike','sigepotter@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Aydelotte','Jeanna','jeannamai8@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Bailey','Greg','white_redman@hotmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Bell','Jacob','jacob781@hotmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Black','Michael','mtblack@berkeley.edu','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Boyle','Sean','seanhere@gmail.com','510-685-8737');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Carroll','Clayton','claytoncarrolltroop998@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Friedman','Brian','friedmanb90@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Castro','Emma','castroemma@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Cheema','Ravi','ravi.cheema@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Cingoz','Armen','acingoz246@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Cook','Robert','waterstopdad@sbcglobal.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Crandell','Gary','cornochriste@hotmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Crandell','Kathryn','kathryncrandell@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Dark','Erich','scouting@darkfamily.us','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Delaney','Chuck','ckdelaney.pack997@comcast.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Dromlewicz','Kim','dromlewicz@yahoo.com','925 413 0116');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Duan','Shane','shane.duan@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Feick','Wayne','waf@brunz.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Fink','Joyce','finkjoyce@troop941.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Fontaine','Dave','djfontainecrew357@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Friedman','Peter','planesafe@aol.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Gabrielson','Edward','bsachester@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Garay','Joe','jgaray1@lenovo.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Gendreau','Sean','rehabsean1978@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Gottschalk','Kirk','Gottschalkkirk@troop941.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Grant','Mike','gunsgrant@aol.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Grow','Tim','timgrow3@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Hall','Mark','mark@halls.net','925.672.6029');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Hall','Megan','musicislife052314@gmail.com','925.672.6029');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Hen','Sheli','coralacademyhomeschool@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Hovermale','Mark','markhovermale@comcast.net','925.822.7896');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Hu','Diana','dianahu@kenthu.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Huber','Joleen','joleenhuber@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Huber','Will','Willkhuber@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Huen','Tat','tathuen@yahoo.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Hughes','Grant','grookes@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Hunt','Liz','mrs.lizhunt@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Jacobsen','Douglas','djacobse@umich.edu','510.384.3049');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('James','Michael','mjames_79@yahoo.com','510-825-4786');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Kimball','Dan','7a5126@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Kohnke','Jim','kohnkejames@troop941.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Kubeck','David','kids@thekubecks.com','209.327.0655');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Kuhner','Greg','gkuhner@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Kum','Tiffany','send2tiff@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Lambert','Kenneth','kenneth_lambert@att.net','707-373-9641');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Lannus','Paul','plannus@yahoo.com','(510) 797-1133');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Law','Caroline','ticaro@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Lee','Andrew','leeandrew@troop941.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Lee','Brandon','yagamagabuha@yahoo.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Legrand','Eric','elegrand@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Leong','Lillian','Lillianleongdo@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Linsheid','Randy','ranlinsch@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Lucero','Joanne','lucero.joanne@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Maghazil','Abdullah','maghazil.scouting@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Marsh','Chris','bsa@marsh.ai','(341) 222-8402');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Masaun','Gagan','gmasaun@guidewire.com','562-900-4126');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('McDonald','Bryan','bryan.mcdonald@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('McFarland','Jack ','ofthewestmeadow@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('McFarland','Michelle','micbranton@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Miller','Deborah','debmillersf@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Moon','Andrew','akmoon@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Musso','Darcy','dbrusso4@msn.com','(925) 284-5645');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Namburi','Mallikarjuna','malliknamburi@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Nawab','Syed','nawabkamran@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Obledo','Maria','Maria.Obledo@scouting.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('O''Donnell','Martin','modo1997@hotmail.co.uk','415.200.7325');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Ollano','Louise','Babyollano@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Overzet','Chris','Fabtoys@sbcglobal.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Padam','Jagandeep','jaganpadam@gmail.com','702.677.4416');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Padia','Alyssa','alyssa.padia@scouting.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Pak','Sandy','logs.sandy@yahoo.com','925.788.2320');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Palmar','Alpesh','alpeshparmar@yahoo.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Pattanaik','Mohan','mohanpattanaik@yahoo.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Peck','Justin','motorguts@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Pope','Randy','randypope.ca@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Pyka','Sean','slpyka@gmail.com','925.207.4335');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Rajendran','Nair','rajendran_nair@yahoo.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Rather','Ronald','ronald.rather@scouting.org','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Raynor','Charles','craynor03@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Reece','Kevin','kevinbrianreece@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Rustia','Glenn','glennjo2@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Ryer','Jason','ryer64@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Sevilla','Devin','dasevilla@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Shaikh','Riyaz','eriyaz@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Shargell','Matt','mattshargel@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Sid','Jensen','living4lif@aol.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Smith','Andrew','gtsdrummer@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Smith','Dave','dtrdave@live.com','dtrdave@live.com');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Smith','Jeff','secsmith308@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Somarajan','Amalraj','amalrajsomarajan@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Stieler','Michelle','mstieler@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Sullivan','Scott','andysullivan333@gmail.com','925-787-9715');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Swiatko','Paul','Pswiatko@yahoo.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Thomas','Steve','steve.thomas@ucprofit.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Trickel','Tim','tim@cocofirearmtraining.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Ulla','Razikh','razikh@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Upadhyaya','Anadi','anadi.upadhyaya@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Voisin','Kimberly','Kimberly_voisin@hotmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Walden','Doug','dwald@sonic.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Wandesforde','Alan','testpilot57@comcast.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Wilson','Michael','sergeantmike19@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Woods','Larry','larry.woods8244@sbcglobal.net','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Yorg','Mike','mikeyorg@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Yu','Charlie','charlie.yu@gmail.com','');
INSERT INTO volunteers (lastname, firstname, email, phonenumber) VALUES ('Zee','Alan','alan@alanzee.com','415 254 1802');

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
