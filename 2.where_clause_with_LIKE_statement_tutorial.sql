-- WHERE CLAUSE--
# This helps us filter through our records/ROWS of database/tables
# as SELECT statements work for COLUMNS

SELECT * FROM employee_salary WHERE first_name = 'Leslie';
# = is a comparision operator

SELECT * FROM employee_salary WHERE salary >= 50000;
# >= is a comparision operator
# <= is a comparision operator
# != means 'not equal to' works for everything except - cases, can be used for 'strings' as well.

SELECT * FROM employee_demographics WHERE birth_date > '1985-01-01';
# comparision operators work for date formats as well 'YYYY-MM-DD' standard for MySQL

-- AND/ OR /NOT/ OR NOT/ AND NOT: Logical Operators with WHERE clause--
SELECT * 
FROM employee_demographics
WHERE birth_date >= '1985-01-01'
AND gender = 'male'
;
SELECT * 
FROM employee_demographics
WHERE birth_date >= '1985-01-01'
OR gender = 'male'
;

# EXAMPLE OF PEMDAS USAGE HERE:
# first () condition is met and then the outer condition is met
SELECT * FROM employee_demographics WHERE (first_name = 'Leslie' AND age = 44) OR age <= 55;

-- LIKE Statement --
-- uses signs: % for (anything resembling) and _ for (a specific value) --
-- x% means x is const after it there can be anything (means- starting with x)
SELECT * FROM employee_demographics WHERE first_name LIKE 'Jer%';

-- %xy% means anything before, anything after, just these characters must exist anywhere in bw as well.
SELECT * FROM employee_demographics WHERE first_name LIKE '%er%';

-- 'x_' means there should be only 1 character after the fixed 'x', no more/no less
SELECT * FROM employee_demographics WHERE first_name LIKE 'a__'; # here 2 underscores means only 2 characters allowed after a

-- combined x__% means we want a character x -> exactly 2 characters after it, then anything works for output
SELECT * FROM employee_demographics WHERE first_name LIKE 'a__%';






