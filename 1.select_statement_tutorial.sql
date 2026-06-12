SELECT * 
FROM parks_and_recreation.employee_demographics;
# means SELECT FROM databse_name.table_name; to select the table out of the database we want

SELECT first_name, # the row by row layout for columns is better to perform operatios column-wise, row-by-row
last_name, 
birth_date
age,
age+10 # new column can be added directly as well to our table
FROM parks_and_recreation.employee_demographics;
# means SELECT column_1, column_2, column_3 FROM databse_name.table_name;

# PEMDAS rule is the Mathematic order for queries to run
# paranthesis(), exponent x^, multiplication, division, addition, subtraction

SELECT DISTINCT gender 
FROM parks_and_recreation.employee_demographics;
# Distinct gives only the unique values of a column

SELECT DISTINCT first_name, gender # order of writing column_name sequences matters for the table
FROM parks_and_recreation.employee_demographics;
# Distinct acting on 2 columns here makes each combination unique with first_name and gender