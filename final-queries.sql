-- Q1
select * from employers;

select e.empName, j.jobTitle
from employers e
left join joblisting j on (e.employerID = j.employerID)
where jobTitle = 'Software Developer';



-- Q2
select * from jobseeker;
select * from js_experience;

select js.firstName, js.lastName, exp.roleTitle, exp.roleYearsExperience
from jobseeker js
left join js_experience exp on (js.jobSeekerID = exp.jobSeekerID)
where roleTitle = 'Software Testing'
and roleYearsExperience > 5;


-- Q3
select * from joblisting;
select * from req_qualifications;
select * from req_experience;

select j.jobTitle, j.positionType, j.jobMinSalary, j.jobMaxSalary, 
q.req_qualificationType, q.req_educationType, e.req_roleTitle, e.req_roleYearsExperience
from joblisting j 
left join req_qualifications q on (j.jobID = q.jobID)
left join req_experience e on (q.jobID = e.jobID)
where req_roleTitle = 'Software Developer';


-- Q4
select * from jobseeker;
select * from js_experience;

select js.firstName, js.lastName, exp.roleTitle, exp.roleYearsExperience
from jobseeker js
left join js_experience exp on (js.jobSeekerID = exp.jobSeekerID)
where roleTitle = 'Database Analyst'
order by roleYearsExperience desc;


-- Q5
select * from jobseeker;
select * from js_experience;
select * from js_visaStatus;

select js.firstName, js.lastName, js.phoneNum, exp.roleTitle, exp.roleYearsExperience,
visa.visaType, visa.visaStartDate, visa.visaExpiryDate, visa.visaNum
from jobseeker js
left join js_experience exp on (js.jobSeekerID = exp.jobSeekerID)
left join js_visastatus visa on (exp.jobSeekerID = visa.jobSeekerID)
where roleTitle = 'Web Design';

alter table jobseeker
add phoneNum int
after email;

update jobseeker
set phoneNum = 32006655
where jobSeekerID = '3';

update jobseeker
set phoneNum = 31007800
where jobSeekerID = '4';

update jobseeker
set phoneNum = 33902323
where jobSeekerID = '5';

update jobseeker
set phoneNum = 39005455
where jobSeekerID = '1';

update jobseeker
set phoneNum = 34009090
where jobSeekerID = '2';

-- Q6
select * from joblisting;
select * from req_skills;

select j.jobID, j.jobTitle, j.jobDescription, j.jobMinSalary, 
j.jobMaxSalary, j.jobType, j.positionType, j.jobState, j.jobPostCode,
s.skillsType, s.req_skillYearsExperience 
from jobListing j 
left join req_skills s on (j.jobID = s.jobID)
where jobMaxSalary > 150000
group by positionType;


update joblisting
set jobType = 'Software Development'
where jobID = '8'

