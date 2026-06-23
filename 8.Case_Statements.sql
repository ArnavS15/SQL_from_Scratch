-- Case Statements -- 
# used after SELECT, but all cases written before FROM 
# acts with CASE--WHEN-->END just like how, IF--ELIF-->ELSE statements work.
# multiple WHEN can be used like multiple ELIFs
# AS is used after END to compress the multiple_conditions used

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >=50 THEN 'Retiring'
END AS Age_Bracket
FROM employee_demographics;

-- PROBLEM CASE --
SELECT * FROM employee_salary;
# End of year bonus and pay increase in salaries, check for the employees

-- PART-1: 
# if salary < 50000, give 5% raise
# if salary >= 50000, give 7% raise
SELECT first_name, last_name, salary,dept_id,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05) # salary * 1.05 can be used as well (instead of salary + salary * x)
	WHEN salary >= 50000 THEN salary + (salary * 0.07) # salary * 1.07 can be used as well (instead of salary + salary * y)
END AS New_salary
FROM employee_salary;

-- PART-2:
# Finance dept gets 10% Bonus
# check for finance dept using dept_id from parks_departments table
SELECT * FROM parks_departments; # department_id is 6 for finance after observation
# either  WHEN dept_id = 6 THEN salary * 1.07 can be used as another WHEN/THEN case-statement in the previous code
# but, this would not clearly explain salary/bonus difference

-- THUS, another CASE-END statement can be used after, the first CASE-END statement set
SELECT first_name, last_name, salary,dept_id,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05) # salary * 1.05 can be used as well (instead of salary + salary * x)
	WHEN salary >= 50000 THEN salary + (salary * 0.07) # salary * 1.07 can be used as well (instead of salary + salary * y)
END AS New_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10 # for 10 % bonus amount
END AS Bonus
FROM employee_salary;



