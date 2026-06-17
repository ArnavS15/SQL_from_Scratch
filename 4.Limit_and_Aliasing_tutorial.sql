-- Limit --
# Limit x, works at the last of code to limit the output to the first x outcomes
# Limit is a powerful tool if paired after Order BY to find the top x/bottom x of the outcomes

SELECT * FROM employee_demographics ORDER BY age DESC LIMIT 3;
# this select the top 3 oldest people from the table

SELECT * FROM employee_demographics ORDER BY age DESC LIMIT 2,1;
# LIMIT x,y means start at the row x and then go to to y positions after it
# here it means go to 2nd row and then the row just 1 after it.

-- Aliasing --
# aggregate functions can be used with AS alias to give them new names for future use as a column
SELECT gender, AVG(age) AS avg_age FROM employee_demographics GROUP BY gender HAVING AVG(age) > 40;

-- AN ORDER WE CAN OBSERVE TO RUN QUERIES IS: --
-- 1.SELECT    columns, aggregate_columns AS alias_name
-- 2.FROM      database.table_name
-- 3.WHERE     row_conditions --> filters individual rows
-- 4.GROUP BY  columns (as above in select)
-- 5.HAVING    aggregate_conditions --> filters groups (=, <, > etc.)
-- 6.ORDER BY  column_order(ASC/DESC)
-- 7.LIMIT     X; --> gives top X outputs.
