-- full back up of ERD export 
-- Export has issues, decided to rebuild the DB into sections 
-- should incrementally take back ups of the schema as we go  


CREATE TABLE `req_experience` (
  `req_experienceID` int auto_increment not null,
  `jobID` int not null,
  `req_roleTitle` varchar(50) not null,
  `req_roleYearsExperience` int not null,
  PRIMARY KEY (`req_experienceID`)
);

CREATE TABLE `js_experience` (
  `experienceID` int auto_increment not null,
  `jobSeekerID` int not null,
  `roleTitle` varchar(50) not null,
  `roleYearsExperience` int not null,
  PRIMARY KEY (`experienceID`)
);

CREATE TABLE `experience` (
  `ID` int auto_increment not null,
  `experienceID` int not null,
  `req_experienceID` int not null,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`experienceID`) REFERENCES `js_experience`(`experienceID`),
  FOREIGN KEY (`req_experienceID`) REFERENCES `req_experience`(`req_experienceID`)
);

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

CREATE TABLE `req_skills` (
  `req_skillsID` int auto_increment not null,
  `jobID` int not null,
  `skillTypeID` int not null,
  `skillYearsExperience` int not null,
  PRIMARY KEY (`req_skillsID`),
  FOREIGN KEY (`jobID`) REFERENCES `jobListing`(`jobID`)
);

CREATE TABLE `js_qualifications` (
  `qualificationID` int auto_increment not null,
  `jobSeekerID` int not null,
  `qualificationType` varchar(50) not null,
  `educationType` varchar(50) not null,
  PRIMARY KEY (`qualificationID`)
);

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

CREATE TABLE `js_skills` (
  `skillsID` int auto_increment not null,
  `jobSeekerID` int not null,
  `skillTypeID` int not null,
  `skillYearsExperience` int not null,
  PRIMARY KEY (`skillsID`),
  FOREIGN KEY (`jobSeekerID`) REFERENCES `jobSeeker`(`jobSeekerID`)
);

CREATE TABLE `js_visaStatus` (
  `visaID` int auto_increment not null,
  `jobSeekerID` int not null,
  `visaType` varchar(50) not null,
  `visaStartDate` date ,
  `visaExpiryDate` date ,
  `visaNum` int not null,
  PRIMARY KEY (`visaID`)
);

CREATE TABLE `skills` (
  `ID` int auto_increment not null,
  `skillsID` int not null,
  `req_skillsID` int not null,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`skillsID`) REFERENCES `js_skills`(`skillsID`),
  FOREIGN KEY (`req_skillsID`) REFERENCES `req_skills`(`req_skillsID`)
);

CREATE TABLE `req_qualifications` (
  `req_qualificationID` int auto_increment not null,
  `jobID` int not null,
  `qualificationTitle` varchar(50) not null,
  `educationType` varchar(50) not null,
  PRIMARY KEY (`req_qualificationID`),
  FOREIGN KEY (`jobID`) REFERENCES `jobListing`(`jobID`)
);

CREATE TABLE `qualifications` (
  `qualificationTypeID` int auto_increment not null,
  `qualificationID` int not null,
  `req_qualificationID` int not null,
  PRIMARY KEY (`qualificationTypeID`),
  FOREIGN KEY (`req_qualificationID`) REFERENCES `req_qualifications`(`req_qualificationID`),
  FOREIGN KEY (`qualificationID`) REFERENCES `js_qualifications`(`qualificationID`)
);

