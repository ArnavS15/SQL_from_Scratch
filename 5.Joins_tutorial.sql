-- Joins --
# help us to combine 2 tables or more if they have same column_names or if not that, similar data present in 2 columns(even if diff names)
# tables we use:
SELECT * FROM employee_demographics; # doesnt have employee_id: 2, so the joined table on it wont have id = 2 either!
SELECT * FROM employee_salary; # gets joined on the base as written after JOIN

-- 1. Inner Joins (by default) --
# returns rows that are same for both columns in both tables
# joining salary table on demographics table
SELECT * FROM employee_demographics
JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id; # too long use Alias AS

# The shortened version
SELECT * FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id; # too long use Alias AS to have same output.

# tu pull/select columns after/during table joining
# we have to specify from which table are we pulling out he columns (only when they are common to both)
# to prevent ambiguity bw confusion of column choice between 2 tables
# while selecting limited columns instead of the whole joined table, every time!

SELECT dem.employee_id, age, occupation
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
on dem.employee_id = sal.employee_id;

-- 2. Outer Joins --
# contains left and right joins
# takes everything from the left table even if there's no match, returns only the matches from the right table. and if no matches exist, returns NULLS
# opposite for right join.
# here left table is employee_demographics table( on the left of JOIN keyword ) and right table is employee_salary table( on the right of JOIN keyword )
# thus result is same as above
SELECT *
FROM employee_demographics as dem
LEFT JOIN employee_salary as sal
on dem.employee_id = sal.employee_id;

# Reversing the left join from above: Right Joins
# Right join takes everything from the right of 'JOIN' and matches with the LEFT of 'JOIN', else returns nulls.
SELECT *
FROM employee_demographics as dem
RIGHT JOIN employee_salary as sal
on dem.employee_id = sal.employee_id;

-- SELF JOIN --
# to tie a table to itself.alter.
# for tables, we dont need AS to alias table names
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2 
ON emp1.employee_id = emp2.employee_id;

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2 
ON emp1.employee_id = emp2.employee_id; # one column can be +/- something to change the order for the id of one table to the second.

-- Joining Multiple Tables Together
SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

SELECT * FROM parks_departments; # just for reff of dept. across tables
# dept_id exists in the salary table so we can join this table and sales table, using deot_id
# we cant join parks_dept to employee_dem. table as no common column
# i realised here AS for tables is by-default when we write their alias name later.

SELECT *
FROM employee_demographics tb1
INNER JOIN employee_salary tb2 # first Join salary table on demographics table
ON tb1.employee_id = tb2.employee_id # emp_id becomes common key
INNER JOIN parks_departments tb3 # then join the parks_dept. table on the result table from prev.Join
ON tb2.dept_id = tb3.department_id; # department id is the common key/ diff names but similar/same content




