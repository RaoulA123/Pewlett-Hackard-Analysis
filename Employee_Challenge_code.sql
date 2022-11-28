-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;
--DELIVERABLE 1
--Creating the Retirement by Title 
SELECT e.emp_no, e.first_name, e.last_name,
t.title, t.from_date, t.to_date
--INTO Retirement_Titles
FROM employees as e 
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;
--DELIVERABLE 1
--Creating the Retirement by Title 
SELECT e.emp_no, e.first_name, e.last_name,
t.title, t.from_date, t.to_date
--INTO Retirement_Titles
FROM employees as e 
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;



-- Create Retiring titles 
SELECT COUNT(ut.emp_no), ut.title
--INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

--DELIVERABLE 2
--Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
--INTO mentorship_eligibility
FROM employees AS e
LEFT OUTER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
LEFT OUTER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

--DELIVERABLE 3
--querying the title table for information on the currently working employees

--Total headcount since creation of the company : 300 024
SELECT COUNT(emp_no) FROM employees;

--Total curent headcount by titles: 240,124
SELECT COUNT(emp_no) FROM titles WHERE (to_date = '9999-01-01');

--Total curent headcount by department: 240,124 ( to confirm result by title)
SELECT COUNT(emp_no) FROM dept_emp WHERE (to_date = '9999-01-01');

--for the percentage of actively working/held titles in the company
--according to the table majority is senior enginer and senior stuff, 35 and 34 percent of 240,124 employees

SELECT title, 
COUNT (title) as currently_working_num_of_titles, 
COUNT (title)*100/ (SELECT COUNT (emp_no) FROM titles WHERE (to_date = '9999-01-01')) as percentage_to_total_emp  
--INTO currently_working_titles_percentage
FROM titles 
WHERE (to_date = '9999-01-01') GROUP BY title
ORDER BY currently_working_num_of_titles DESC;

--this gives me info on the retiring titles percentage on the total num of employees
SELECT title, COUNT (title) as retiring_titles, 
COUNT (title)*100/ (SELECT COUNT (emp_no) FROM titles WHERE (to_date = '9999-01-01')) AS retiring_percentage_to_total_emp  
--INTO retiring_titles_percentage
FROM unique_titles
GROUP BY title
ORDER BY retiring_titles DESC;


--How many roles will need to be filled as the "silver tsunami" 
-- begins to make an impact? --72 458
SELECT SUM (retiring_titles) FROM retiring_titles_percentage;

-- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
-- This querry will provide the number of available mentors for each group

SELECT mentorship_eligibility.title, COUNT (mentorship_eligibility.title) as mentor_count
--INTO mentors_by_titles
FROM mentorship_eligibility
GROUP BY mentorship_eligibility.title
ORDER BY mentor_count DESC; 

--this gives the total number of mentors: 1549

SELECT SUM (mentor_count) FROM mentors_by_titles; 

--this query provides the ratio (in %) of mentors per retiring employees if that represents sufficient mentors.
SELECT rt.count, rt.title as retiring_title, 
mbt.title as mentor_title, mbt.mentor_count,
(rt.count / mbt.mentor_count) as mentor_per_employee
--INTO mentor_vs_retiree_num
FROM retiring_titles as rt
LEFT JOIN mentors_by_titles as mbt
ON rt.title = mbt.title
ORDER BY rt.title  DESC;


--this gives me info on the retiring titles percentage on the total num of total titles
-- it gives a clear picture on how many percent of the specific job titles need to be hired
SELECT rt.title, ct.currently_working_num_of_titles, 
rt.retiring_titles, ct.percentage_to_total_emp,
rt.retiring_percentage_to_total_emp, 
rt.retiring_titles*100 / ct.currently_working_num_of_titles as percentage_of_retiring_titles
--INTO retiring_titles_vs_titles_percentage
FROM retiring_titles_percentage as rt
INNER JOIN currently_working_titles_percentage as ct
ON rt.title = ct.title
ORDER BY retiring_titles DESC;

SELECT SUM (rt.retiring_titles) / SUM (mentors_by_titles.mentor_count) 
FROM retiring_titles_percentage as rt,mentors_by_titles;

-- Are there enough qualified, retirement-ready employees in 
-- the departments to mentor the next generation of Pewlett Hackard employees?
-- This querry will tell me how many mentors are available for each grouP

--this query provides the ratio (in %) of mentors per retiring employees if that represents sufficient mentors.
SELECT rt.count, rt.title as retiring_title, 
mbt.title as mentor_title, mbt.mentor_count,
(rt.count / mbt.mentor_count) as mentor_per_employee
--INTO mentor_vs_retiree_num
FROM retiring_titles as rt
LEFT JOIN mentors_by_titles as mbt
ON rt.title = mbt.title
ORDER BY rt.title  DESC;


-- Create Retiring titles 
SELECT COUNT(ut.emp_no), ut.title
--INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

--DELIVERABLE 2
--Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
--INTO mentorship_eligibility
FROM employees AS e
LEFT OUTER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
LEFT OUTER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

--DELIVERABLE 3
--querying the title table for information on the currently working employees

--Total headcount since creation of the company : 300 024
SELECT COUNT(emp_no) FROM employees;

--Total curent headcount by titles: 240,124
SELECT COUNT(emp_no) FROM titles WHERE (to_date = '9999-01-01');

--Total curent headcount by department: 240,124 ( to confirm result by title)
SELECT COUNT(emp_no) FROM dept_emp WHERE (to_date = '9999-01-01');

--for the percentage of actively working/held titles in the company
--according to the table majority is senior enginer and senior stuff, 35 and 34 percent of 240,124 employees

SELECT title, 
COUNT (title) as currently_working_num_of_titles, 
COUNT (title)*100/ (SELECT COUNT (emp_no) FROM titles WHERE (to_date = '9999-01-01')) as percentage_to_total_emp  
--INTO currently_working_titles_percentage
FROM titles 
WHERE (to_date = '9999-01-01') GROUP BY title
ORDER BY currently_working_num_of_titles DESC;

--this gives me info on the retiring titles percentage on the total num of employees
SELECT title, COUNT (title) as retiring_titles, 
COUNT (title)*100/ (SELECT COUNT (emp_no) FROM titles WHERE (to_date = '9999-01-01')) AS retiring_percentage_to_total_emp  
--INTO retiring_titles_percentage
FROM unique_titles
GROUP BY title
ORDER BY retiring_titles DESC;


--How many roles will need to be filled as the "silver tsunami" 
-- begins to make an impact? --72 458
SELECT SUM (retiring_titles) FROM retiring_titles_percentage;

-- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
-- This querry will provide the number of available mentors for each group

SELECT mentorship_eligibility.title, COUNT (mentorship_eligibility.title) as mentor_count
--INTO mentors_by_titles
FROM mentorship_eligibility
GROUP BY mentorship_eligibility.title
ORDER BY mentor_count DESC; 

--this gives the total number of mentors: 1549

SELECT SUM (mentor_count) FROM mentors_by_titles; 

--this query provides the ratio (in %) of mentors per retiring employees if that represents sufficient mentors.
SELECT rt.count, rt.title as retiring_title, 
mbt.title as mentor_title, mbt.mentor_count,
(rt.count / mbt.mentor_count) as mentor_per_employee
--INTO mentor_vs_retiree_num
FROM retiring_titles as rt
LEFT JOIN mentors_by_titles as mbt
ON rt.title = mbt.title
ORDER BY rt.title  DESC;


--this gives  info on the retiring titles percentage on the total num of total titles
-- it gives a clear picture on how many percent of the specific job titles need to be hired
SELECT rt.title, ct.currently_working_num_of_titles, 
rt.retiring_titles, ct.percentage_to_total_emp,
rt.retiring_percentage_to_total_emp, 
rt.retiring_titles*100 / ct.currently_working_num_of_titles as percentage_of_retiring_titles
--INTO retiring_titles_vs_titles_percentage
FROM retiring_titles_percentage as rt
INNER JOIN currently_working_titles_percentage as ct
ON rt.title = ct.title
ORDER BY retiring_titles DESC;





