use online_sales
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