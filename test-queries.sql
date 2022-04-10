-- #reference list

-- Query 1:   	List all employers that have more than 2 positions available for software developers

-- Query 2: 	List all candidates that have more than 5 years’ experience in software testing

-- Query 3: 	List all the positions available for software developers including the qualifications and years of experience required.

-- Query 4:  	Display the ‘best fit’ list of candidate for a specific database analyst position

-- Query 5: 	Display the visa status for all web designers. Include the candidate name, surname and phone number. 

-- Query 6: 	List the position title, description, responsibilities, skills requirements, and years of experience, salary range,
            --  location, and contract type for all positions where the salary is over $150 000. Group the results by position type.





-- #tests

-- Query 1:   	List all employers that have more than 2 positions available for software developers

select * from employers;
select * from jobListing;

select e.empName, j.jobTitle
from employers e
left join joblisting j on (e.employerID = j.employerID)
where jobTitle = 'Software Developer';




-- Query 2: 	List all candidates that have more than 5 years’ experience in software testing

select * from jobseeker;
select * from js_experience;

select js.firstName, js.lastName, exp.roleTitle, exp.roleYearsExperience
from jobseeker js
left join js_experience exp on (js.jobSeekerID = exp.jobSeekerID)
where roleTitle = 'Software Testing'
and roleYearsExperience > 5;






-- Query 3: 	List all the positions available for software developers including the qualifications and years of experience required.

select * from joblisting;
select * from req_qualifications;
select * from req_experience;

select j.jobTitle, j.positionType, j.jobMinSalary, j.jobMaxSalary, q.req_qualificationType, q.req_educationType, e.req_roleTitle, e.req_roleYearsExperience
from joblisting j 
left join req_qualifications q on (j.jobID = q.jobID)
left join req_experience e on (q.jobID = e.jobID)
where req_roleTitle = 'Software Developer'







-- Query 4:  	Display the ‘best fit’ list of candidate for a specific database analyst position

-- Q4
-- need to return the top result 
select * from jobseeker;
select * from js_experience;

select js.firstName, js.lastName, exp.roleTitle, exp.roleYearsExperience
from jobseeker js
left join js_experience exp on (js.jobSeekerID = exp.jobSeekerID)
where roleTitle = 'Database Analyst'
order by roleYearsExperience desc;




-- Query 5: 	Display the visa status for all web designers. Include the candidate name, surname and phone number. 








-- Query 6: 	List the position title, description, responsibilities, skills requirements, and years of experience, salary range,
            --  location, and contract type for all positions where the salary is over $150 000. Group the results by position type.
