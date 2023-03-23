/* Q1-- Find the sum of quantity of pizza ordered per pizza_id for all pizza_id starting with the letter 's'
Order your result by the sum of quantity in descending order */

SELECT pizza_id, SUM(quantity)
FROM order_details
WHERE pizza_id LIKE 's%'
GROUP BY pizza_id
order by 
pizza_id DESC;

/* Q2 Write a query to show the list of pizza_id 
with prices higher than the average price of the pizza_id in the pizza table */

SELECT
pizza_id,
price
from
pizzas
where price > (SELECT AVG (price) from pizzas);
