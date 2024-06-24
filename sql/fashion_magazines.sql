SELECT customers.customer_name AS "Customer", 
PRINTF('$%.2f', SUM(subscriptions.subscription_length * subscriptions.price_per_month)) AS "Amount Due"
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id

JOIN subscriptions
    ON orders.subscription_id = subscriptions.subscription_id

WHERE subscriptions.description = "Fashion Magazine"
    AND orders.order_status = "unpaid"
GROUP BY customers.customer_name
asdf