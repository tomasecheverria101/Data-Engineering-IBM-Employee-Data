# project3_group1
Data Engineering Track: IBM Employee Data
Purpose
The purpose of our project aims to efficiently organize IBM employee data into a structured SQL database and establish a date pipeline using Python for data extraction and processing. Our goal is to develop a data management solution that not only simplifies the process of data storage but also enhances the accessibility and usability of the IBM employee data for ongoing analysis and decision-making.

For the purpose of organizing IBM employee’s data into a structured database, we have selected PostgreSQL as our database management system. It provides the necessary tools and capabilities to handle complex data securely and efficiently.

Instructions
We combined test.csv and train.csv to create a combined_dataset.csv through Jupyter Notebook using Panda DataFrame.

With Python, we created six datasets, Job_Roles.csv, Positions.csv, Salary.csv, Junior_Employee.csv, Senior_Employee.csv, and Travel_Employee.csv.

These datasets were exported into File Explorer. From File Explorer, we exported these .csv files to PostgreSQL.

We created a Database named IBM_Employee. In Query Tool, we created six tables that can be found under Schemas > Public > Tables.

To obtain information from our six data sets using SQL, we combined tables to examine information on Employee ID, Positions, Monthly Pay Rate, and more.

Reading data through OpenPyXL further helped involved build scripts to handle the data in Excel, obtain the precise job description for a worker, and locate a variety of job descriptions for a range of workers.

Ethical Considerations
In our project, we were committed to maintaining high ethical standards in the handling of this dataset from Kaggle. We ensured that all data used was anonymized and compliant with Kaggle’s usage policies, prioritizing the privacy and security of the information. Access to the data was restricted within our group to prevent unauthorized access. We conducted our data engineering with transparency, clearly documenting our methods and intentions in using the data. We regularly evaluated and assessed our data handling procedures to ensure they met ethical research standards. This procedure is in line with best practices for data security, privacy, and ethical usage by academic guidelines and Kaggle’s policies.

Data Source
Data URL: https://www.kaggle.com/datasets/rohitsahoo/employee

DBD Diagram: https://dbdiagram.io/home/

Coding References
OpenPyXL: https://www.youtube.com/watch?v=6QdeR15myIY&list=PLCC34OHNcOtrMWIf_MXWrCajQwp3lL27T&index=1

Python: https://www.datacamp.com/tutorial/python-excel-tutorial

SQL: https://www.w3schools.com/sql/

Collaborators
Natalie Lopez | Johanna Belmar | Milena Cuao | Tomas Echeverria
