SELECT 
    Contract,
    COUNT(*) AS Customers
FROM Telco_customer_churn
GROUP BY Contract
ORDER BY Customers DESC;