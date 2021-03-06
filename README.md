## Project Overview
> The purpose of this project is to determine the number of retiring employees per title and identify those who are eligible to participate in the mentorship program.  To identify the number of retiring employees a query will be written that looks for employees will birth dates between January 1st, 1952 and December 31st, 1955 and returns their most recent title.  Once we have the employees that are retiring, we will look to see who is eligible for the mentorship program.  To be eligible for the mentorship program the employee must have been born between January 1st, 1965 and January 31sy, 1965.   

## Resources
*   Software: pgAdmin 4, Postgres 11.13-1
*   Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv

## Results - Key Takeaways from the Tables

*  The total number of employees that are eligible for retirement is 90,398 

*  64% of the retiring employees are in senior positions with the biggest need being for Senior Engineers (33%) and Senior Staff (32%)

![](https://github.com/timbialek/Pewlett_Hackard_Analysis_2022/blob/main/Pewlet-Hackard-Analysis/Resources/retirement_titles.PNG)

* There are only 2 managers that are retiring

* There are 1,549 employees eligible for the mentorship program



## Summary

> In reviewing the above information that has been provided for the analysis there are presently 90,398 roles that will need to be filled due to the silver tsunami.  Those roles include the titles of Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer and Manager.  With the significant number of retirement eligible employees there should be plenty of employees to mentor the 1,549 that are eligible for the mentorship program.

> In addition to the above data that has been provided there are couple of additional tables that would be helpful in evaluating the needs of the company during the needs upcoming "silver tsunami".  

> The first would be to change the retirement table to only include the current active employees that will be retirement eligible.  The current table now includes employees that have already left the company and this is over inflating the number of retiring employees.  As you can see by selecting on the following link, [retirement_titles_current_employees](https://github.com/timbialek/Pewlett_Hackard_Analysis_2022/blob/main/Pewlet-Hackard-Analysis/Resources/retirement_titles_current_employees.PNG), there are really only 72,458 current employees eligible for retirement.  

> Second, I would look at the employees in the mentorship program by title to see how many are in senior level positions.  Since the retiring employees would be mentoring thier replacements I am not sure a Senior Engineer would be mentoring another Senior Engineer, so we might to consider removing the Senior level staff when looking at the future needs. Although they could be eligible for the 2 manager positions that will be opening up.  

> Below are the two new tables that will allow for a better view of the retiring employees and those that will be getting mentored.

Revised Retirement Titles for only Current Employees

![](https://github.com/timbialek/Pewlett_Hackard_Analysis_2022/blob/main/Pewlet-Hackard-Analysis/Resources/retirement_titles_current_employees.PNG)    

Employees by Title Eligible to be Mentored

![](https://github.com/timbialek/Pewlett_Hackard_Analysis_2022/blob/main/Pewlet-Hackard-Analysis/Resources/mentorship_eligibility_by_title.PNG)




