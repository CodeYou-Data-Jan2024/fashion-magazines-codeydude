SELECT *, PRINTF($%.2f, SUM(S.subscription_ength * S.price_per_month)) AS "Amount Due"
FROM Customers AS C
JOIN Orders AS O
    ON C.customer_id = O.customer_id

JOIN Subscriptions AS S
    ON O.subscription_id = S.subscription_id

WHERE S.description = "Fashion Magazine"
AND O.order_status = "Unpaid"
GROUP BY C.customer_name;