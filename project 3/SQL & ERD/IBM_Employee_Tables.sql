-- 1. List employee number, position, and monthly pay rate of each employee.

SELECT
	j.employee_number,
	j.position,
	s.monthly_pay_rate
FROM
	Job_Roles j
JOIN
	Salary s on j.employee_number = s.employee_number;
	
	
-- 2. List employee_number, age over 30, position, and travel frequency.

SELECT
	s.employee_number,
	s.age,
	s.position,
	t.travel_frequency
FROM
	Senior_Employee s
JOIN
	Travel_Employee t on s.employee_number = t.employee_number;
	
-- 3. List each Laboratory Technician, including their employee number, position, age, and salary.

SELECT
  s.employee_number,
  s.position,
  s.age,
  sl.monthly_pay_rate
FROM 
  Senior_Employee s
JOIN 
  Salary sl ON s.employee_number = sl.employee_number
WHERE
  s.position = 'Laboratory Technician'

UNION

SELECT
  j.employee_number,
  j.position,
  j.age,
  jl.monthly_pay_rate
FROM 
  Junior_Employee j
JOIN 
  Salary jl ON j.employee_number = jl.employee_number
WHERE
  j.position = 'Laboratory Technician';
	
	