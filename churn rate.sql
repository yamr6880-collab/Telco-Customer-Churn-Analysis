SELECT 
    Churn_Label,
    COUNT(*) AS TotalCustomers,
    ROUND(COUNT(*) * 100.0 / 
    (SELECT COUNT(*) FROM Telco_customer_churn), 2) AS Percentage
FROM Telco_customer_churn
GROUP BY Churn_Label
