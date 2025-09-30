# Online_Sales
The objective of this task is to use SQL queries to extract and analyze data from the Online_Sales database

task 6: Sales Trend Analysis
Overview
This repository contains the solution for Task 6 of the Data Analyst Internship program from Elevate Labs. The project focuses on performing a time-series analysis of sales data to identify monthly trends using SQL aggregations.

Objective
The main objective of this task is to analyze monthly revenue and order volume to understand sales patterns over a specific period.

Tools Used
Database: Microsoft SQL Server

Language: T-SQL

Process
Database Setup: A new database named online_sales was created to house the project data.

Data Import: Two distinct datasets were imported into two tables:

Orders: Contained order-level details such as dates and customer information.

Details: Contained financial information for each order, including the sales amount.

Data Analysis: A SQL query was developed to join the Orders and Details tables. The script aggregates the data by month and year to calculate total monthly revenue and the volume of unique orders.

SQL Script
The following SQL script was used to perform the final analysis.

SQL

SELECT
    YEAR(O.Order_Date) AS SalesYear,
    MONTH(O.Order_Date) AS SalesMonth,
    SUM(D.Amount) AS MonthlyRevenue,
    COUNT(DISTINCT O.Order_ID) AS OrderVolume
FROM
    Orders AS O
JOIN
    Details AS D ON O.Order_ID = D.Order_ID
GROUP BY
    YEAR(O.Order_Date), MONTH(O.Order_Date)
ORDER BY
    SalesYear, SalesMonth;
Final Results
The execution of the script produced the following summary table for the sales data of the year 2018.

SalesMonth	SalesYear	MonthlyRevenue	OrderVolume
1	2018	61632	61
2	2018	38962	54
3	2018	60694	58
4	2018	34330	44
5	2018	29093	31
6	2018	23658	30
7	2018	12966	31
8	2018	31492	31
9	2018	27283	30
10	2018	31613	43
11	2018	48469	46
12	2018	37579	41

EXPORT TO SHEETS
Key Insights
Strong Start to the Year: The first quarter showed the best performance, with January and March recording the highest revenue and order volumes.

Summer Slowdown: A significant decline in sales occurred during the summer months, with sales reaching their lowest point in July.

End-of-Year Recovery: Sales began to improve in the final quarter of the year, suggesting a seasonal pattern in customer purchasing behavior.
