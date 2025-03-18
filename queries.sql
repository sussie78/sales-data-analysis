-- Total Sales by Store
SELECT store_id, SUM(total_sales) AS total_revenue
FROM sales
GROUP BY store_id
ORDER BY total_revenue DESC;

-- Best Selling Products
SELECT p.product_name, SUM(s.quantity_sold) AS total_units_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 5;

-- Daily Sales Trend
SELECT sale_date, SUM(total_sales) AS daily_revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

-- Sales Contribution by Product (for Pie Chart)
SELECT p.product_name, SUM(s.total_sales) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Peak Sales Days (Weekends vs. Weekdays)
SELECT EXTRACT(DOW FROM sale_date) AS day_of_week, SUM(total_sales) AS revenue
FROM sales
GROUP BY day_of_week
ORDER BY revenue DESC;

-- Store with Highest Revenue
SELECT s.store_name, SUM(sa.total_sales) AS total_revenue
FROM sales sa
JOIN stores s ON sa.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_revenue DESC
LIMIT 1;
