DESCRIBE hr.regions;

select job_id from job_history;

select DISTINCT job_id from job_history;

select DISTINCT department_id from job_history;

select DISTINCT job_id, department_id from job_history;

select distinct employee_id from job_history;

select distinct employee_id, start_date from job_history;

select distinct employee_id, start_date, job_id from job_history;

select * from job_history;

select distinct commission_pct from employees;

select first_name, last_name, salary 
from employees;

select salary from employees;

SELECT salary*2 from employees;

SELECT salary*2+employee_id from employees;

SELECT first_name, salary*1.5/4, salary from employees;

SELECT salary, salary*5/2, salary*5/2/(10-5) from employees;

SELECT * from job_history;

select start_date, end_date, end_date-start_date+1 from job_history;

SELECT start_date, start_date+7 from job_history;

select first_name || last_name from employees;

select first_name || ' ' || last_name from employees;

select first_name || last_name || salary from employees;

SELECT 'My name is ' || first_name || ' and my surname is ' || last_name
FROM employees;

SELECT 'My name is ' || first_name || ' and my surname is ' || last_name as name
FROM employees;

SELECT first_name AS fn, last_name as ln, commission_pct as cp
FROM employees;

SELECT start_date, end_date, (end_date-start_date)+1 as "count of days" 
from job_history;

SELECT 'abc' || 'xyz' || (90*30) as "Result"
FROM dual;

SELECT * FROM dual;

desc dual;

SELECT 28*365*24*60*60 "My age in seconds" FROM dual;

SELECT 'It''s my life' from dual;

SELECT q'<It's mu life>' from dual;

----------------EXERCISE 2;

SELECT * FROM regions;

SELECT first_name, department_id, salary, last_name FROM employees;

SELECT employee_id, email, hire_date-7 "One week before hire date"
FROM employees;

SELECT first_name || '(' || job_id || ')' "our_employees"
FROM employees;

SELECT DISTINCT first_name
FROM employees;

SELECT job_title,  'min=' || min_salary || ', max=' || max_salary "info",
max_salary "max", max_salary*2-2000 "new_salary"
FROM jobs;

SELECT q'<Peter's dog id very clever>' FROM dual;

SELECT 'Peter''s dog id very clever' FROM dual;

SELECT 100*365.25*24*60 "Min i 1 age" FROM dual;

----------------EXERCISE 2;

SELECT first_name, last_name, salary FROM employees WHERE salary = 17000;

SELECT first_name, salary FROM employees WHERE last_name = 'King';

SELECT * FROM employees WHERE hire_date = '21.09.05';

SELECT * FROM employees WHERE employee_id = 1000/10+1;

SELECT * FROM employees WHERE employee_id = manager_id;

SELECT * FROM job_history WHERE job_id = 'ST_CLERK';

SELECT * FROM employees WHERE 'Dr ' || first_name || ' ' || last_name = 'Dr David Austin';

SELECT first_name, last_name, salary FROM employees WHERE salary > 10000;

SELECT * FROM job_history WHERE start_date < '01.01.05';

SELECT * FROM employees WHERE first_name > 'Steven';

SELECT first_name, last_name, salary 
FROM employees WHERE salary BETWEEN 4000 AND 10000;

SELECT first_name, last_name, salary 
FROM employees WHERE salary >=4000 AND salary <=  10000;

SELECT first_name, last_name, salary
FROM employees WHERE salary BETWEEN employee_id AND 10000;

SELECT * FROM job_history WHERE start_date BETWEEN '01.01.04' AND '31.12.06';

SELECT * FROM employees WHERE first_name BETWEEN 'A' AND 'C';

SELECT * FROM departments WHERE location_id IN (1700, 2400, 1500);

SELECT * FROM departments 
WHERE location_id = 1700 OR location_id = 2400 OR location_id = 1500;

SELECT * FROM job_history WHERE job_id IN ('IT_PROG', 'ST_CLERK');

SELECT * FROM job_history WHERE end_date IN ('31.12.07', '05.05.05');

SELECT * FROM employees WHERE commission_pct IS NULL;

SELECT * FROM employees WHERE first_name LIKE 'S%'; 

SELECT * FROM employees WHERE first_name LIKE '%r'; 

SELECT * FROM employees WHERE first_name LIKE 'A%r'; 

SELECT * FROM employees WHERE first_name LIKE 'D_n'; 

SELECT * FROM employees WHERE first_name LIKE 'De%n'; 

SELECT * FROM employees WHERE job_id LIKE 'ST\_%' ESCAPE '\'; 

SELECT * FROM employees
WHERE first_name LIKE 'D%' AND salary > 10000;

SELECT * FROM employees
WHERE first_name LIKE 'D%' AND salary > 7000 AND job_id = 'SA_REP';

SELECT * FROM employees
WHERE first_name LIKE 'D%' OR salary > 7000;

SELECT * FROM employees
WHERE NOT (job_id = 'SA_MAN');

SELECT * FROM employees
WHERE last_name NOT LIKE 'K%';

SELECT * FROM employees
WHERE job_id NOT IN ('ST_MAN', 'ST_CLERK');

SELECT * FROM employees
WHERE salary NOT BETWEEN 5000 AND 6500;

SELECT * FROM employees
WHERE commission_pct IS NOT NULL AND last_name NOT LIKE '%n';

SELECT * FROM employees 
WHERE first_name LIKE '__n%' AND commission_pct IS NULL;

SELECT * FROM employees 
WHERE first_name LIKE 'A%' AND job_id = 'SA_REP';

SELECT * FROM employees 
WHERE first_name LIKE '__n%' AND commission_pct IS NULL
OR
first_name LIKE 'A%' AND job_id = 'SA_REP';

SELECT first_name, last_name, salary, department_id, job_id, commission_pct
FROM employees WHERE last_name LIKE '%i%' AND salary > employee_id * 50
OR
job_id IN ('IT_PROG', 'PU_CLERK') AND commission_pct IS NULL;

SELECT first_name, salary FROM employees ORDER BY salary;

SELECT first_name, salary FROM employees WHERE job_id = 'IT_PROG' ORDER BY salary;

SELECT first_name, salary FROM employees 
WHERE job_id = 'IT_PROG' ORDER BY hire_date;

SELECT first_name, salary FROM employees 
WHERE job_id = 'IT_PROG' ORDER BY first_name DESC;

SELECT first_name, salary, hire_date, hire_date + salary * 2 FROM employees 
WHERE employee_id > 20 ORDER BY hire_date + salary * 2;

SELECT * FROM employees ORDER BY commission_pct DESC;

SELECT * FROM employees ORDER BY commission_pct NULLS FIRST;

SELECT first_name, salary FROM employees 
ORDER BY 2;

SELECT job_id, first_name, last_name, salary, hire_date
FROM employees 
ORDER BY job_id DESC, last_name, 4 DESC;

--------------EXIRCISE 3

SELECT * FROM employees 
WHERE first_name = 'David';

SELECT * FROM employees 
WHERE job_id = 'FI_ACCOUNT';

SELECT first_name, last_name, salary, department_id
FROM employees 
WHERE department_id = 50 AND salary > 4000;

SELECT * FROM employees 
WHERE department_id IN (20, 30);

SELECT * FROM employees 
WHERE first_name LIKE '_a%a';

SELECT * FROM employees 
WHERE department_id IN (50, 80) AND commission_pct IS NOT NULL
ORDER BY 4;

SELECT * FROM employees 
WHERE first_name LIKE '%n%n%';

SELECT * FROM employees 
WHERE first_name LIKE '_____%'
ORDER BY department_id DESC NULLS LAST;

SELECT * FROM employees 
WHERE salary BETWEEN 3000 AND 7000 
AND commission_pct IS NULL 
AND job_id IN ('PU_CLERK', 'ST_MAN', 'ST_CLERK'); 

SELECT * FROM employees 
WHERE first_name LIKE '%\%%' ESCAPE '\';

SELECT job_id, first_name, salary FROM employees 
WHERE employee_id >= 120 AND job_id != 'IT_PROG'
ORDER BY job_id, first_name DESC;

--------------EXIRCISE 3

SELECT first_name, LOWER(first_name) FROM employees;

SELECT LOWER('Hello,' || ' how you DOing? 123') FROM dual;

SELECT UPPER('Hello,' || ' how you DOing? 123') FROM dual;

SELECT INITCAP('Hello,' || ' how you DOing? 123') FROM dual;

SELECT * FROM employees WHERE LOWER(first_name) = 'david';

SELECT * FROM employees WHERE UPPER(first_name) = 'DAVID';

SELECT * FROM employees WHERE INITCAP(first_name) = 'David';

SELECT LOWER(2+2*2) FROM dual;

SELECT LOWER('HellO ' || ' How olD Are YOU?' || ' 20 ') FROM employees;

SELECT CONCAT('hello, ', 'there!') FROM dual;

SELECT CONCAT(55, 'there!') FROM dual;

SELECT CONCAT(salary*2, hire_date) FROM employees;

SELECT CONCAT('today is ', SYSDATE) FROM dual;

SELECT first_name, LENGTH(first_name) dina FROM employees;

SELECT LENGTH('There could be your advertising') FROM dual; 

SELECT 'Name is ' || first_name || ' and surname is ' || last_name, 
LENGTH('Name is ' || first_name || ' and surname is ' || last_name) "Cjlumn" 
FROM employees;

SELECT country_name FROM countries
WHERE LENGTH(country_name) > 8;

SELECT LPAD('Sanya', 10, '#') FROM dual;

SELECT first_name, LPAD(first_name, 15, '-0'), RPAD(first_name, 15, '*') 
FROM employees;

SELECT RPAD(first_name, 15, ' ') || LPAD(salary, 8, ' ') FROM employees;

SELECT TRIM(TRAILING 'q' from 'Sanyaqqqqqqq') FROM employees;

SELECT TRIM(LEADING '*' from '***Sanya**') FROM employees;

SELECT TRIM(BOTH '0' from '00Sanya00000') FROM employees;

SELECT TRIM(' ' from '   Sanya  ') FROM employees;  

SELECT * FROM employees WHERE INSTR(job_id, 'PROG') = 4;

SELECT * FROM employees WHERE INSTR(hire_date, '05') = 4;

SELECT INSTR(' u Find u letter u', 'u') FROM dual;

SELECT INSTR(' u Find u letter u', 'u', 3) FROM dual;

SELECT INSTR(' u Find u letter u', 'u', 2, 3) FROM dual;

SELECT email, SUBSTR(email, 4) FROM employees;

SELECT SUBSTR('123456', 3) FROM dual;

SELECT SUBSTR('123456', 3, 2) FROM dual;

SELECT SUBSTR('123456', -3, 2) FROM dual;

SELECT REPLACE('Hello, how you doing? Whats new?', 'o',  '**') FROM dual;

SELECT REPLACE('Hello, how you doing? Whats new?', 'o') FROM dual;

SELECT ROUND(3.14) FROM dual;

SELECT ROUND(3.56728, 1) FROM dual;

SELECT ROUND(145.654, -1) FROM dual;

SELECT salary*3.1415, ROUND(salary*3.1415) FROM employees;

SELECT first_name, ROUND((SYSDATE-hire_date)*employee_id) "bonus" FROM employees;

SELECT TRUNC(3.56728, 3) FROM dual;

SELECT TRUNC(3.56728, 0) FROM dual;

SELECT TRUNC(-243.56728, -2) FROM dual;

SELECT ROUND(-243.56728, -2) FROM dual;

SELECT MOD(9, 3) FROM dual;

SELECT MOD(3, 9) FROM dual;

SELECT MOD(3.1, 2) FROM dual;

SELECT * FROM employees WHERE MOD(employee_id, 2) = 0;

SELECT employee_id, first_name, last_name, MOD(employee_id, 3)+1 "Team" 
FROM employees;

SELECT * FROM nls_session_parameters WHERE parameter = 'NLS_DATE_FORMAT';

SELECT SYSDATE FROM dual;

SELECT SYSDATE, SYSDATE+5.5 FROM dual;

SELECT to_char(SYSDATE, 'DD-MM-RR hh24:mi:ss') FROM dual;

SELECT SYSDATE-hire_date FROM employees;

SELECT employee_id, MONTHS_BETWEEN(end_date, start_date) FROM job_history;

SELECT MONTHS_BETWEEN('12.02.19', '05.01.19') FROM dual;

SELECT * FROM employees
WHERE MONTHS_BETWEEN('01.01.10', hire_date) > 60;

SELECT end_date, ADD_MONTHS(end_date, -4) FROM job_history;

SELECT NEXT_DAY(SYSDATE, 1) FROM dual;

SELECT NEXT_DAY(SYSDATE, 'Понедельник') FROM dual;

SELECT * FROM SYS.nls_session_parameters;

SELECT LAST_DAY(SYSDATE) FROM dual;

SELECT hire_date, LAST_DAY(hire_date)-hire_date "On work" FROM employees;

SELECT hire_date, ROUND(hire_date, 'CC') FROM employees
WHERE employee_id IN (120, 121);

SELECT hire_date, ROUND(hire_date, 'YYYY') FROM employees
WHERE employee_id IN (120, 121);

SELECT hire_date, ROUND(hire_date, 'MM') FROM employees
WHERE employee_id IN (120, 121);

SELECT hire_date, TRUNC(hire_date, 'YYYY') FROM employees
WHERE employee_id IN (120, 121);

--------------EXIRCISE 4

SELECT * FROM employees
WHERE LENGTH(first_name) > 10;

SELECT * FROM employees
WHERE MOD(salary, 1000) =0;

SELECT phone_number, SUBSTR(phone_number, 1, 3) FROM employees
WHERE phone_number LIKE '___.___.____';

SELECT * FROM employees
WHERE SUBSTR(first_name, -1) = 'm'
AND LENGTH(first_name) > 5;

SELECT NEXT_DAY(SYSDATE, 5) "Next Friday" FROM dual;

SELECT * FROM employees
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) > 150;

SELECT REPLACE(phone_number, '.', '-') "New Phone Number" FROM employees;

SELECT UPPER(first_name), LOWER(email), INITCAP(job_id)
FROM employees;

SELECT CONCAT(first_name, salary) FROM employees;

SELECT hire_date, ROUND(hire_date, 'MM'), TRUNC(hire_date, 'YYYY') FROM employees;

SELECT RPAD(first_name, 10, '$'), LPAD(last_name, 15, '!') FROM employees;

SELECT first_name, INSTR(first_name, 'a', 1, 2) FROM employees;

SELECT '!!!HELLO!! MY FRIEND!!!!!!!!', 
TRIM(BOTH '!' from '!!!HELLO!! MY FRIEND!!!!!!!!') 
FROM dual;

SELECT salary, salary*3.1415, ROUND(salary*3.1415), TRUNC(salary*3.1415, -3)/1000 
FROM employees;

SELECT hire_date, ADD_MONTHS(hire_date, 6), LAST_DAY(hire_date)
FROM employees;

--------------EXIRCISE 4