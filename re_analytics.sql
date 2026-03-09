/*
REAL ESTATE SALES ANALYTICS
Dataset: re_dataset.sql 
Tables: regions, agents, properties, clients, sales
This file aims to simulate key business questions of a real-estate agency. It is related to revenue, sales performance, property inventory
and client purchases.
*/

-- Total revenue of all property sales
SELECT 
  SUM(sale_amount) AS total_revenue
FROM 
  sales;

-- Top 5 agents who generated the most revenue
SELECT 
  a.agent_name, 
  SUM(sale_amount) AS revenue_generated
FROM 
  agents a
JOIN sales s
  ON a.agent_id = s.agent_id
GROUP BY 
  a.agent_id, a.agent_name
ORDER BY 
  revenue_generated DESC
LIMIT 5;

-- City which has the highest total value sales
SELECT 
  r.city, 
  SUM(sale_amount) AS total_revenue
FROM 
  regions r
JOIN properties p
  ON r.region_id = p.region_id
JOIN sales s
  ON p.property_id = s.property_id
GROUP BY 
  r.city
ORDER BY 
  total_revenue DESC
LIMIT 1;

-- Properties that have been sold vs haven't been sold
SELECT 
  COUNT(s.property_id) AS properties_sold,
  COUNT(CASE WHEN s.property_id IS NULL THEN 1 END) AS unsold_properties
FROM 
  properties p
LEFT JOIN sales s
  ON p.property_id = s.property_id;


-- Average sales price per property type
SELECT 
  p.property_type, 
  AVG(s.sale_amount) AS average_sales_price
FROM 
  properties p
JOIN sales s
  ON p.property_id = s.property_id
GROUP BY 
  p.property_type;

-- Agent who sold the most properties
SELECT 
  a.agent_name, 
  COUNT(*) AS properties_sold
FROM 
  agents a 
JOIN sales s
  ON a.agent_id = s.agent_id
GROUP BY 
  a.agent_id, a.agent_name
ORDER BY 
  properties_sold DESC
LIMIT 1;

-- Average time for a property to be sold
SELECT 
  AVG(s.sale_date - p.listing_date) AS average_time_for_sale 
FROM 
  properties p
JOIN sales s
  ON p.property_id = s.property_id;

-- Average revenue per region
SELECT 
  r.region_name AS region,
  AVG(s.sale_amount) AS average_sale
FROM 
  regions r
JOIN properties p
  ON r.region_id = p.region_id
JOIN sales s
  ON s.property_id = p.property_id
GROUP BY
  r.region_id, r.region_name;


-- Region that generates the most revenue 
SELECT 
  r.region_name, 
  SUM(s.sale_amount) AS total_revenue
FROM regions r
JOIN properties p
  ON r.region_id = p.region_id
JOIN sales s
  ON p.property_id = s.property_id
GROUP BY 
  r.region_id, r.region_name
ORDER BY 
  total_revenue DESC
LIMIT 1;

-- Top 5 most expensive properties purchased
SELECT 
  c.client_name,
  p.listing_price AS property_worth
FROM properties p
JOIN sales s
  ON p.property_id = s.property_id
JOIN clients c
  ON s.client_id = c.client_id
ORDER BY property_worth DESC
LIMIT 5;

-- Number of sales per month
SELECT 
  EXTRACT(month FROM sale_date) AS month, 
  COUNT(sale_date) AS total_sales_count
FROM
  sales
GROUP BY 
  month;

-- Property which generates the most revenue 
SELECT
  p.property_type,
  SUM(s.sale_amount) AS total_revenue
FROM properties p
JOIN sales s
  ON p.property_id = s.property_id
GROUP BY
  p.property_type
ORDER BY
  total_revenue DESC
LIMIT 1;

-- Agent who generated the highest average sale value  
SELECT 
  a.agent_name,
  AVG(s.sale_amount) AS average_sales
FROM 
  agents a
JOIN sales s
  ON a.agent_id = s.agent_id
GROUP BY
  a.agent_id, a.agent_name
ORDER BY 
  average_sales DESC
LIMIT 1;
