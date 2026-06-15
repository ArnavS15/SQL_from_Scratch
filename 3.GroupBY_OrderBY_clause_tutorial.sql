-- Group By Clause --
-- groups together ROWS,
-- for same values in specified COLUMNS or,
-- columns that we CHOOSE to group on:,
-- when ROWS get GROUPED, we can run AGG. Functions on them!
-- SELECT 'column' and GROUP BY 'column' should be same
-- UNLESS, aggregated functions are used in SELECT : AVG(column_2) ie different columns
SELECT gender FROM employee_demographics group by gender;

# we are grouping on the gender column and grouping by gender:
# BUT, we are calculating aggregate function/calc. on age finding AVG(age) for the grouped rows of gender.
SELECT gender, AVG(age) FROM employee_demographics GROUP BY gender;

# DEMO ON SALARY TABLE with more AGG. functions as well.
SELECT * FROM employee_salary;
SELECT occupation, salary FROM employee_salary group by occupation, salary;
SELECT occupation, AVG(salary) FROM employee_salary group by occupation;
SELECT occupation, MAX(salary) FROM employee_salary group by occupation;

# DEMOGRAPHICS TABLE
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) FROM employee_demographics group by gender;
# Count tells the number of rows grouped per category of the grouped column

-- ORDER BY Clause --
# used in the last of the code as ORDER BY column_name ASC/DESC
# to sort the results in either ASC. or DESC. order of the column selected
# ASC IS default without typing.
SELECT * FROM employee_demographics ORDER BY first_name;

# order can be done with reference to 2 or more columns as well
SELECT * FROM employee_demographics ORDER BY gender DESC , age;
# columns like gender are never left as last/base for ordering by as onky binary outputs cant help us then order them together with the first column if we reverse gender and age positioning.

-- Having vs Where --
SELECT gender, AVG(age) FROM employee_demographics WHERE AVG(age) >=40  GROUP BY gender;
# where AVG(column) doesnt work before GROUPBY clause as aggregate functions only work after the rows are being grouped!

SELECT * FROM employee_salary;
SELECT occupation, AVG(salary) FROM employee_salary WHERE occupation LIKE '%manager%' GROUP BY occupation HAVING AVG(salary) > 75000;
