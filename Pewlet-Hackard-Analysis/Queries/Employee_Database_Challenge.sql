--Module 7 Challenge
--DROP TABLE retirement_titles
--DROP TABLE unique_titles
--DROP TABLE retiring_titles

--Deliverable 1

--List of Employee Information
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
	t.from_date,
    t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;   

--review retirement file
SELECT * FROM retirement_titles
SELECT COUNT (emp_no) FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title
INTO unique_titles
FROM retirement_titles as r
ORDER BY r.emp_no, r.to_date DESC;

--review unique titles file
Select * FROM unique_titles
SELECT COUNT (emp_no) FROM unique_titles

--Number of Employees by most recent job title about to retirement
SELECT COUNT(u.emp_no), u.title
INTO retiring_titles
FROM unique_titles as u
GROUP BY u.title
ORDER BY count DESC;

--review retirement_titles file
SELECT * FROM retiring_titles
SELECT SUM (count) FROM retiring_titles
--END Deliverable 1

--DELIVERABLE 2

--DROP TABLE mentorship_eligibility

SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
	e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title

INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
		AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

--review mentorship_eligibility file
SELECT * FROM mentorship_eligibility
SELECT COUNT (emp_no) FROM mentorship_eligibility

--END Deiverable 2--

-------------------------------------------------------------------------------------------

--CODE FOR ADDITION TABLES requested as part of the Summary-----

--Identify Employees for Mentorship program by title
SELECT COUNT(m.emp_no), m.title
FROM mentorship_eligibility as m
GROUP BY m.title
ORDER BY count DESC;



--Deliverable 1 REVISED to include only current employees

--List of Employee Information
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
	t.from_date,
    t.to_date
INTO retirement_titles2
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
		AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;   

--review retirement file
Select * FROM retirement_titles2
SELECT COUNT (emp_no) FROM retirement_titles2


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title
INTO unique_titles2
FROM retirement_titles2 as r
ORDER BY r.emp_no, r.to_date DESC;

--review unique titles file
SELECT * FROM unique_titles2
SELECT COUNT (emp_no) FROM unique_titles2

--Number of Employees by most recent job title about to retirement
SELECT COUNT(u.emp_no), u.title
INTO retiring_titles2
FROM unique_titles2 as u
GROUP BY u.title
ORDER BY count DESC;

--review retirement_titles file
SELECT * FROM retiring_titles2
SELECT SUM (count) FROM retiring_titles2
--END Deliverable 1 Revised



