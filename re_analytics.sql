-- Total revenue of all property sales
SELECT SUM(sale_amount) AS total_revenue
FROM sales;

-- Top 5 agents who generated the most revenue
SELECT a.agent_name, SUM(sale_amount) AS revenue_generated
FROM agents a
JOIN sales s
ON a.agent_id = s.agent_id
GROUP BY a.agent_name
ORDER BY revenue_generated DESC
LIMIT 5;

-- City which has the highest total value sales
SELECT r.city, SUM(sale_amount) AS total_revenue
FROM regions r
JOIN properties p
ON r.region_id = p.region_id
JOIN sales s
ON p.property_id = s.property_id
GROUP BY r.city
ORDER BY total_revenue DESC
LIMIT 1;

-- Propeties that have been sold vs haven't been sold
SELECT COUNT(*) AS sold_properties
FROM properties
;
