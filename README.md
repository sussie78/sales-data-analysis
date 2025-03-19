📌 Sales Data Analysis Project
📊 By: Stellah, Junior Data Analyst

📖 Overview
This project analyzes sales data using SQL queries, uncovering key business insights. The dataset includes sales transactions, products, and store details.
🔍 Key objectives:
✔️ Identify top-performing stores
✔️ Analyze best-selling products
✔️ Discover daily sales trends

📂 Dataset Used
The project is based on three datasets:

📌 Sales Table: Transaction records
📌 Products Table: Product details
📌 Stores Table: Store locations and info
📁 Datasets are available in the data/ folder.

🔍 Key Insights
✔️ Store A generates the highest revenue (~$500K)
✔️ Product X is the best-selling item (10K+ units sold)
✔️ Sales peak on weekends (40% increase

📝 SQL Queries Used

1️⃣ Total Sales by Store
SELECT store_id, SUM(total_sales) AS total_revenue
FROM sales
GROUP BY store_id
ORDER BY total_revenue DESC;

2️⃣ Best Selling Products
SELECT p.product_name, SUM(s.quantity_sold) AS total_units_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 5;

2️⃣ Best Selling Products
SELECT p.product_name, SUM(s.quantity_sold) AS total_units_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 5;

3️⃣ Daily Sales Trend
SELECT sale_date, SUM(total_sales) AS daily_revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

📊 Visualizations
Total Sales by Store
🛒 X-axis: Store Name
💰 Y-axis: Revenue ($)

Daily Sales Trend
📅 X-axis: Date
💰 Y-axis: Revenue ($)

Best-Selling Products (Pie Chart)

🛠️ How to Use This Project
📌 Steps to Reproduce:
1️⃣ Clone this repository:
git clone https://github.com/sussie78/sales-data-analysis.git
cd sales-data-analysis
2️⃣ Open SQL queries and run them in pgAdmin.
3️⃣ Use Tableau or Matplotlib for data visualization.

📜 License
This project is open-source under the MIT License. See LICENSE for details.



















 
---
👨‍💻 Created by Stellah Ulriksen (https://github.com/sussie78) | 🚀 Connect with me on [https://www.linkedin.com/in/stellah-ulriksen-381666222/details/skills/)
