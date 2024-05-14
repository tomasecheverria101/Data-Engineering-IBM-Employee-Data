CREATE TABLE Job_Roles (
	Employee_Number INTEGER,
	Position VARCHAR,
	Department VARCHAR,
	Standard_Hours INTEGER
);

select *
from Job_Roles
limit 5;

CREATE TABLE Salary (
	Employee_Number INTEGER,
	Hourly_Rate INTEGER,
	Monthly_Income INTEGER,
	Monthly_Pay_Rate INTEGER,
	Standard_Hours INTEGER,
	Percent_Salary_Increase VARCHAR
);

select *
from Salary
limit 5;

CREATE TABLE Travel_Employee (
	Travel_Frequency VARCHAR,
	Employee_Number INTEGER,
	Involvement_Rating INTEGER,
	Level INTEGER,
	Position VARCHAR,
	Job_Satisfaction_Rating INTEGER,
	Over_Time_Employee VARCHAR,
	Performance_Rating INTEGER,
	Years_at_Company INTEGER,
	Years_in_Current_Role INTEGER
);

select *
from Travel_Employee
limit 5;

CREATE TABLE Senior_Employee (
	Employee_Number INTEGER,
	Age INTEGER,
	Gender VARCHAR,
	Education_Level INTEGER,
	Education_Field VARCHAR,
	Position VARCHAR
);

select *
from Senior_Employee
limit 5;

CREATE TABLE Junior_Employee (
	Employee_Number INTEGER,
	Age INTEGER,
	Gender VARCHAR,
	Education_Level INTEGER,
	Education_Field VARCHAR,
	Position VARCHAR
);

select *
from Junior_Employee
limit 5;

CREATE TABLE Positions (
	Position_ID VARCHAR,
	Position_Name VARCHAR
);
	
