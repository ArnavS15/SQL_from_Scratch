-- String Functions --
SELECT LENGTH('skyfall');
SELECT UPPER('skyfall');
SELECT LOWER('skyfall');
# Length prinys the length of characters
# UPPER/LOWER we know the use for standardization issues of a column
# Length can be used to make sure eg: phone number has exactly 10 digits etc.

-- To check for the characters in first names and order them in ascending order:
SELECT * FROM employee_demographics;
SELECT first_name, LENGTH(first_name) FROM employee_demographics ORDER BY 2 ;
# here 1 is first_name and 2 is LENGTH(first_name) in order, thus we chose to order by them as per 1/2

-- TRIM Functions --
# trim, left-trim, right-trim gets rid of the whitespaceing from either the front or the ends
SELECT TRIM('             SKY             '); # trim gets rid of both the left and right ends of spacing while left,right are obvious.
# RTRIM for right ended trimming
# LTRIM for left ended trimming

-- SUB-STRINGS --
# SUBSTRING(column_name, x, y) means start from x character, go to y characters from it (counted no.)
SELECT 
first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

-- REPLACE function --
# case sensitive for replacement of characters
SELECT first_name ,REPLACE(first_name , 'a', 'z') # replace character 'a' with character 'z' from column 'first_name'
FROM employee_demographics;

-- LOCATE function --
# Locates character location/index
SELECT LOCATE('X', 'Alexander');
SELECT first_name, LOCATE('An', first_name) # checks if the first name contains 'An' or not and prints as '0' for not present, while '1' for present.
FROM employee_demographics;

-- CONCATENATE function --
# Combines the values of 2 or more columns (row-by-row) and a space can be concatenaded in bw as well
SELECT first_name last_name,
CONCAT(first_name, ' ', last_name) AS Full_Name
FROM employee_demographics;



