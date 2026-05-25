SELECT 
    Payment_Method,

    COUNT(*) AS Total_Customers,

    SUM(CASE
        WHEN Churn_Label = 'Yes' THEN 1
        ELSE 0
    END) AS Churned_Customers,

    ROUND(
        SUM(CASE
            WHEN Churn_Label = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
    2) AS Churn_Rate

FROM Telco_customer_churn
GROUP BY Payment_Method
ORDER BY Churn_Rate DESC;