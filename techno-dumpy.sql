-- ----------------------------------------------------------------------------------------------------------------
#employers
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `employers` (
  `employerID` int auto_increment not null,
  `empName` varchar(50) not null,
  `empPhone` int not null,
  `empEmail` varchar(50) not null,
  `empAddress` varchar(100) not null,
  `empCity` varchar(30) not null,
  `empState` varchar(30) not null,
  `empPostCode` int not null,
  `empProfileImage_URL` varchar(255) not null,
  `empJoinDate` date not null,
  PRIMARY KEY (`employerID`)
);



-- create ~ 5 entry points 
insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Tre Molony',123123,'tre@web.com','1 Queen St','Brisbane','QLD',4170,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Youngi Kim',130043,'young@web.com','10 Albert St','Brisbane','QLD',4000,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Street Rossi',590166,'squid@web.com','75 Frank Rd','Byron Bay','NSW',2545,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Korean Zombie',2011613,'brains@web.com','220 Falcon Lane','Sydney','NSW',1202,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Khamzat Chimaev',112233,'bird@web.com','89 Eagle St','Brisbane','QLD',4178,'www.picsum.co',date(curdate()));

select * from employers;

update employers
set empName = 'Kmart'
where employerID = 1;



-- delete the table (reset)
drop table employers;



-- ----------------------------------------------------------------------------------------------------------------
#joblisting
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `jobListing` (
  `jobID` int auto_increment not null,
  `employerID` int not null,
  `jobTitle` varchar(50),
  `jobType` varchar(50),
  `positionType` varchar(50),
  `jobDescription` text(3000),
  `jobMinSalary` int not null,
  `jobMaxSalary` int not null,
  `jobState` varchar(30) not null,
  `jobPostCode` int not null,
  PRIMARY KEY (`jobID`),
  FOREIGN KEY (`employerID`) REFERENCES `employers`(`employerID`)
);

select * from jobListing;


insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(1,'Junior React Developer','Web Development','Fulltime','Great Company',60000,80000,'QLD',4100);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(1,'Data Analyst','Database Dev','Fulltime','Great Company',80000,90000,'QLD',4100);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(1,'Software Developer','Software Development','Fulltime','Great Company',100000,160000,'QLD',4100);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(2,'Unity Game Developer','Game Development','Casual','Small Indie Company',40000,50000,'VIC',3000);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(3,'Data Analyst','Database Dev','Part time','Flexible Hours',70000,90000,'NSW',2100);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(4,'Software Tester','Software Development','Part time','Small start up',40000,60000,'QLD',4000);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(5,'Web Designer','Web Design','Fulltime','Remote',50000,60000,'QLD',4100);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(5,'Software Developer','Software Development','Fulltime','Remote',120000,160000,'QLD',4100);




-- ----------------------------------------------------------------------------------------------------------------
#jobseeker
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `jobSeeker` (
  `jobSeekerID` int auto_increment not null,
  `firstName` varchar(50) not null,
  `lastName` varchar(50) not null,
  `email` varchar(50) not null,
  `password` varchar(50) not null,
  `birthDate` date not null,
  `state` varchar(30),
  `postCode` int not null,
  `CV_URL` varchar(255) not null,
  `profileImage_URL` varchar(255) not null,
  `joinDate` datetime not null,
  PRIMARY KEY (`jobSeekerID`)
);

select * from jobSeeker;


insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Tre','Day','tre@web.com','123',date(curdate()),'QLD',4100,'www.cv.com','www.picsum.com', date(curdate()));

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Yammie','Noob','fast@bro.com','321',date(curdate()),'QLD',4430,'www.cv.com','www.picsum.com', date(curdate()));

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Chloe','Kim','chur@web.com','333',date(curdate()),'QLD',4000,'www.cv.com','www.picsum.com', date(curdate()));

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Shaun','White','wet@snow.com','444',date(curdate()),'QLD',4100,'www.cv.com','www.picsum.com', date(curdate()));

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Harris','Fisher','up2@web.com','888',date(curdate()),'QLD',4100,'www.cv.com','www.picsum.com', date(curdate()));




-- ----------------------------------------------------------------------------------------------------------------
#visastatus
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `js_visaStatus` (
  `visaID` int auto_increment not null,
  `jobSeekerID` int not null,
  `visaType` varchar(50) not null,
  `visaStartDate` date ,
  `visaExpiryDate` date ,
  `visaNum` int not null,
  PRIMARY KEY (`visaID`)
);

select * from js_visaStatus;

insert into js_visaStatus(jobSeekerID, visaType, visaStartDate, visaExpiryDate, visaNum)
values (5,'401 Visa','2020-11-30','2022-11-30','12345');



-- ----------------------------------------------------------------------------------------------------------------
#js_skills
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `js_skills` (
  `skillsID` int auto_increment not null,
  `jobSeekerID` int not null,
  `skillType` varchar(50) not null,
  `skillYearsExperience` int not null,
  PRIMARY KEY (`skillsID`),
  FOREIGN KEY (`jobSeekerID`) REFERENCES `jobSeeker`(`jobSeekerID`)
);

select * from js_skills;

insert into js_skills(jobSeekerID,skillType,skillYearsExperience)
values (1,'PHP',3);

insert into js_skills(jobSeekerID,skillType,skillYearsExperience)
values (1,'HTML',3);

insert into js_skills(jobSeekerID,skillType,skillYearsExperience)
values (1,'Javascript',3);



-- ----------------------------------------------------------------------------------------------------------------
#js_qualifications
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `js_qualifications` (
  `qualificationID` int auto_increment not null,
  `jobSeekerID` int not null,
  `qualificationType` varchar(50) not null,
  `educationType` varchar(50) not null,
  PRIMARY KEY (`qualificationID`)
);

select * from js_qualifications;

insert into js_qualifications(jobSeekerID, qualificationType, educationType)
values (1,'Diploma Software Development','TAFE');

insert into js_qualifications(jobSeekerID, qualificationType, educationType)
values (1,'Diploma Database Development','TAFE');

insert into js_qualifications(jobSeekerID, qualificationType, educationType)
values (1,'Cert IV Information Technology','TAFE');




-- ----------------------------------------------------------------------------------------------------------------
#js_experience
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `js_experience` (
  `experienceID` int auto_increment not null,
  `jobSeekerID` int not null,
  `roleTitle` varchar(50) not null,
  `roleYearsExperience` int not null,
  PRIMARY KEY (`experienceID`)
);

select * from js_experience;

insert into js_experience(jobSeekerID, roleTitle, roleYearsExperience)
values (1,'Software Developer',1);

insert into js_experience(jobSeekerID, roleTitle, roleYearsExperience)
values (2,'Software Developer',2);

insert into js_experience(jobSeekerID, roleTitle, roleYearsExperience)
values (3,'Software Developer',5);



-- ----------------------------------------------------------------------------------------------------------------
#req_skills
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `req_skills` (
  `req_skillsID` int auto_increment not null,
  `jobID` int not null,
  `skillsType` varchar(50) not null,
  `req_skillsType` varchar(50) not null,
  `req_skillYearsExperience` int not null,
  PRIMARY KEY (`req_skillsID`),
  FOREIGN KEY (`jobID`) REFERENCES `jobListing`(`jobID`),
  FOREIGN KEY (`skillsType`) REFERENCES `js_skills`(`skillsType`)
);

select * from req_skills;

insert into req_skills(jobID, skillsType, req_skillsType, req_skillYearsExperience)
values (3,'PHP','PHP',5);

insert into req_skills(jobID, skillsType, req_skillsType, req_skillYearsExperience)
values (3,'Javascript','Javascript',5);

insert into req_skills(jobID, skillsType, req_skillsType, req_skillYearsExperience)
values (3,'HTML','HTML',5);

-- drop table (reset)
drop table req_skills;


-- ----------------------------------------------------------------------------------------------------------------
#req_qualifications
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `req_qualifications` (
  `req_qualificationID` int auto_increment not null,
  `jobID` int not null,
  `qualificationType` varchar(50) not null,
  `req_qualificationType` varchar(50) not null,
  `req_educationType` varchar(50) not null,
  PRIMARY KEY (`req_qualificationID`),
  FOREIGN KEY (`jobID`) REFERENCES `jobListing`(`jobID`),
  FOREIGN KEY (`qualificationType`) REFERENCES `js_qualifications`(`qualificationType`)
);

select * from req_qualifications;

insert into req_qualifications(jobID, qualificationType, req_qualificationType,req_educationType)
values (4,'Diploma Software Development','Diploma Software Development','TAFE');

insert into req_qualifications(jobID, qualificationType, req_qualificationType,req_educationType)
values (3,'Diploma Database Development','Diploma Database Development','TAFE');

insert into req_qualifications(jobID, qualificationType, req_qualificationType,req_educationType)
values (5,'Cert IV Information Technology','Cert IV Information Technology','TAFE');



-- ----------------------------------------------------------------------------------------------------------------
#req_experience
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `req_experience` (
  `req_experienceID` int auto_increment not null,
  `jobID` int not null,
  `roleTitle` varchar(50) not null,
  `req_roleTitle` varchar(50) not null,
  `req_roleYearsExperience` int not null,
  PRIMARY KEY (`req_experienceID`),
  FOREIGN KEY (`jobID`) REFERENCES `jobListing`(`jobID`),
  FOREIGN KEY (`roleTitle`) REFERENCES `js_experience`(`roleTitle`)
);


select * from req_experience;

insert into req_experience(jobID, roleTitle, req_roleTitle, req_roleYearsExperience)
values (7,'Software Developer','Software Developer',5);

insert into req_experience(jobID, roleTitle, req_roleTitle, req_roleYearsExperience)
values (4,'Software Tester','Software Tester',5);

insert into req_experience(jobID, roleTitle, req_roleTitle, req_roleYearsExperience)
values (3,'Database Analyst','Database Analyst',5);
