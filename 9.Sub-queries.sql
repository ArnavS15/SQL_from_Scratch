-- Sub-queries --
# A query within another query
# Variation 1: Using Where Clause
SELECT * FROM parks_and_recreation;
SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;

# Say we wanted to select only those employees that worked in the parks_and_recr. dept. from employee_dem.
# we could do this by multiple JOINS, that's hectic
# Rather: 
SELECT * FROM employee_demographics
WHERE employee_id IN (SELECT employee_id FROM employee_salary WHERE dept_id = 1);
# only one column can be operated on, inside the () sub-query

# Variation 2: Using SELECT statement
# We want to look at all the salaries with comparision to THE avg salary of all salaries beside them.
SELECT first_name, salary, 
(SELECT AVG(salary) FROM employee_salary) 
FROM employee_salary;

# Variation 3: Using FROM statement
# 
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

# to check for average of the max ages, min ages, count of ages etc
SELECT * FROM (SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender;

# I am a lil confused here:
SELECT gender, AVG(`MAX(age)`) FROM (SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender;






 