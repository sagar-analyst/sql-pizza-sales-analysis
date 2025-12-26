use pizza_sales;

-- 1. Retrieve the total number of orders placed.

SELECT COUNT(Distinct order_id) AS total_orders
FROM orders;

-- 2. Calculate the total revenue generated from pizza sales.

SELECT ROUND(SUM(od.quantity * p.price), 2) AS total_revenue
FROM order_details od
JOIN  pizzas p ON od.pizza_id = p.pizza_id;

-- 3. Top revenue generating pizza.

SELECT pt.name,
       SUM(od.quantity * p.price) AS revenue
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON od.pizza_id = p.pizza_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 1;


-- 4. Identify the most common pizza size ordered.

SELECT 
    p.size, 
    SUM(od.quantity) AS total_ordered
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY total_ordered DESC;


-- 5. List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pt.name, SUM(od.quantity) AS quantity
FROM
    pizza_types pt
        JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = p.pizza_id
GROUP BY pt.name
ORDER BY quantity DESC
LIMIT 5;

-- 6. Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pt.category, SUM(od.quantity) AS total_quantity
FROM
    pizza_types pt
        JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = p.pizza_id
GROUP BY pt.category
ORDER BY total_quantity DESC;
 
-- 7. Determine the distribution of orders by hour of the day.

SELECT HOUR(order_time) AS hours, COUNT(order_id) AS order_count
FROM orders
GROUP BY hours
ORDER BY hours;

-- 8. Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT ROUND(AVG(quantity), 0) as average_pizza_per_day
FROM
    (SELECT o.order_date, SUM(od.quantity) AS quantity
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY o.order_date) AS order_qty;

-- 9. Determine the top 3 most ordered pizza types based on revenue.

SELECT pt.name, SUM(od.quantity * p.price) AS revenue
FROM pizza_types pt
	JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN order_details od ON od.pizza_id = p.pizza_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 3;

-- 10. Analyze the cumulative revenue generated over time.

select order_date,
sum(revenue) over(order by order_date) as cum_revenue
from
(select o.order_date,
sum(od.quantity * p.price) as revenue
from order_details od join pizzas p
on od.pizza_id = p.pizza_id
join orders o
on o.order_id = od.order_id
group by o.order_date) as sales;

-- 11. Order value distribution (Low / Medium / High Orders)

SELECT 
    order_bucket,
    COUNT(*) AS number_of_orders
FROM (
    SELECT 
        o.order_id,
        SUM(od.quantity * p.price) AS order_value,
        CASE
            WHEN SUM(od.quantity * p.price) < 20 THEN 'Low Value'
            WHEN SUM(od.quantity * p.price) BETWEEN 20 AND 40 THEN 'Medium Value'
            ELSE 'High Value'
        END AS order_bucket
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    GROUP BY o.order_id
) t
GROUP BY order_bucket
ORDER BY number_of_orders DESC;
