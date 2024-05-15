-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Salary" (
    "Employee_Number" int   NOT NULL,
    "Hourly Rate" int   NOT NULL,
    "Monthly Pay Rate" int   NOT NULL,
    "Standard Hours" int   NOT NULL,
    "Percent Salary Increase" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "Employee_Number"
     )
);

CREATE TABLE "Job_Roles" (
    "Employee_Number" int   NOT NULL,
    "Position" varchar(100)   NOT NULL,
    "Department" varchar(100)   NOT NULL,
    "Standard Hours" int   NOT NULL,
    CONSTRAINT "pk_Job_Roles" PRIMARY KEY (
        "Employee_Number"
     )
);

CREATE TABLE "Positions" (
    "Position ID" int   NOT NULL,
    "Position_Name" varchar(100)   NOT NULL
);

CREATE TABLE "Junior_Employee" (
    "Employee_Number" int   NOT NULL,
    "Age" int   NOT NULL,
    "Gender" varchar(10)   NOT NULL,
    "Education Level" int   NOT NULL,
    "Education Field" varchar(100)   NOT NULL,
    "Position" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Junior_Employee" PRIMARY KEY (
        "Employee_Number"
     )
);

CREATE TABLE "Senior_Employee" (
    "Employee_Number" int   NOT NULL,
    "Age" int   NOT NULL,
    "Gender" varchar(10)   NOT NULL,
    "Education Level" int   NOT NULL,
    "Education Field" varchar(100)   NOT NULL,
    "Position" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Senior_Employee" PRIMARY KEY (
        "Employee_Number"
     )
);

CREATE TABLE "Travel_Employee" (
    "Travel Frequency" varchar(100)   NOT NULL,
    "Employee_Number" int   NOT NULL,
    "Involvement Rating" int   NOT NULL,
    "Level" int   NOT NULL,
    "Position" varchar(100)   NOT NULL,
    "Job Satisfaction Rating" int   NOT NULL,
    "Over Time Employee" varchar(10)   NOT NULL,
    "Performance Rating" int   NOT NULL,
    "Years at Company" int   NOT NULL,
    "Years in Current Role" int   NOT NULL,
    CONSTRAINT "pk_Travel_Employee" PRIMARY KEY (
        "Employee_Number"
     )
);

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Job_Roles" ("Employee_Number");

ALTER TABLE "Positions" ADD CONSTRAINT "fk_Positions_Position_Name" FOREIGN KEY("Position_Name")
REFERENCES "Senior_Employee" ("Position");

ALTER TABLE "Junior_Employee" ADD CONSTRAINT "fk_Junior_Employee_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Travel_Employee" ("Employee_Number");

ALTER TABLE "Junior_Employee" ADD CONSTRAINT "fk_Junior_Employee_Position" FOREIGN KEY("Position")
REFERENCES "Positions" ("Position_Name");

ALTER TABLE "Senior_Employee" ADD CONSTRAINT "fk_Senior_Employee_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Travel_Employee" ("Employee_Number");

ALTER TABLE "Travel_Employee" ADD CONSTRAINT "fk_Travel_Employee_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Job_Roles" ("Employee_Number");

