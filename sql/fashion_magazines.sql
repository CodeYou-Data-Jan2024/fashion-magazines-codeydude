SELECT *, PRINTF('$%.2f', SUM(S.subscription_length * S.price_per_month)) AS "Amount Due"
FROM orders AS O
JOIN customers AS C
    ON C.customer_id = O.customer_id

JOIN subscriptions AS S
    ON O.subscription_id = S.subscription_id

WHERE S.description = "Fashion Magazine"
AND O.order_status = "Unpaid"
GROUP BY C.customer_name;