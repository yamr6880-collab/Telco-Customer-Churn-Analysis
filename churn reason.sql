SELECT 
    Churn_Reason,
    COUNT(*) AS Customers
FROM Telco_customer_churn
WHERE Churn_Reason IS NOT NULL
GROUP BY Churn_Reason
ORDER BY Customers DESC;