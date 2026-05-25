SELECT 
    Churn_Label,
    
    ROUND(AVG(Monthly_Charges),2) AS Avg_Monthly_Charges,

    ROUND(SUM(Monthly_Charges),2) AS Total_Revenue

FROM Telco_customer_churn
GROUP BY Churn_Label;