## Project Overview
> The purpose of this project is to determine the number of retiring employees per title, and identify the employees who are eligible to participate in a mentorship program.  To identify the number of retiring employees we write a query that looks for employees will birth dates between January 1st, 1952 and December 31st, 1955 and returns their most recent title.  Once we have the employees that are retiring, we will look to see who is eligible for the mentorship program.  To be eligible for the mentorship program the employee must have been born between January 1st, 1965 and January 31sy, 1965.   

## Resources
*   Software: pgAdmin 4, Postgres 11.13-1
*   Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv

## Results - Key Takeaways from the Tables

*  There are 90,398 employees eligible for retirement 

*  Of the retiring employees 64% are in senior positions with the biggest need for Senior Engineers (33%) and Senior Staff (32%)

![](https://github.com/timbialek/Pewlett_Hackard_Analysis_2022/blob/main/Resources/retirement_titles.PNG)

* There are only 2 managers that are retiring

* There are 1,549 employees eligible for the mentorship program



## Summary

> In reviewing the above data that has been provided for the analysis there are currently 90,398 roles that will need to be filled due to the silver tsunami.  Those roles include the titles of Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer and Manager.  With the large number of retirement eligible employees there should be plenty of people to mentor the 1,549 employees that are eligible for the mentorship program.

> In addition to the above data that has been provided there are couple of additional tables that would be helpful in evaluating the needs of the company during the needs upcoming "silver tsunami".  

> The first would be to recreate the retirement table and only include the current active employees that will be retirement eligible.  As that table stands now it includes employees that have already left the company and this over inflating the number of retiring employees.  As you can see by selecting on the following link, [retirement_titles_current_employees](https://github.com/timbialek/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles_current_employees.PNG), there are really only 72,458 current employees eligible for retirement.  

> Second, I would look at the employees in the mentorship program to see based on title how many are in senior level positions.  I would assume the retiring employees would be mentoring the employees that would be replacing them so I am not sure a Senior Engineer would be mentoring another Senior Engineer, so we might need to eliminate the Senior level staff when looking at the future needs. Although they could be eligible for the 2 manager positions that will be opening up.  

> Below are the two new tables that will allow for a better view of the retiring employees and those that will be getting mentored.

Revised Retirement Titles for only Current Employees

![](https://github.com/timbialek/Pewlett_Hackard_Analysis_2022/blob/main/Resources/retirement_titles_current_employees.PNG)    

Employees by Title Eligible to be Mentored

![](https://github.com/timbialek/Pewlett_Hackard_Analysis_2022/blob/main/Resources/mentorship_eligibility_by_title.PNG)




