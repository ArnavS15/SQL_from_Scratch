-- Unions --
# allows us to combine rows together from same or seperate tables
# we use 2 or more select statements using Union
# UNION IS- UNION DISTINCT by-default.
# to see all duplicated rows as well, use: UNION ALL
SELECT age,gender FROM employee_demographics dem
UNION SELECT first_name, last_name FROM employee_salary sal;
# unions dont always work for everything, we cant just spam combine them for no reason.
# we need to keep data same for rows to look uniform when combined

# THUS, this contains uniform/combined data of all names from both the tables
SELECT first_name ,last_name FROM employee_demographics UNION SELECT first_name, last_name FROM employee_salary ORDER BY first_name ;

# Use-case of UNIONS:
# for the employee_demographics table, find the employees with age > 50, 'OLD' acts as label
# find Highly paid employees from employee_salary table, to decide old and highly paid employees to Lay-off
# Union helps us access data across multiple tables to get a desired output

# Trying to find out which old male or old females are highly paid, to lay them off (the older code just showed people and we wanted clearer table)
SELECT first_name, Last_name, 'Old Male' AS Label FROM employee_demographics WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Female' AS Label FROM employee_demographics WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS Label FROM employee_salary WHERE salary > 70000 ORDER BY first_name, last_name ;
# the first rows decide what columns and criteria to group from, the last row decides what criteria to hold all of the above conditions for:
