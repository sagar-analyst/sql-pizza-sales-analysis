🍕 Pizza Sales Analysis using SQL

📌 Project Overview

This project analyzes pizza sales data to uncover revenue trends, customer ordering behavior, and product performance using SQL.
The goal is to translate raw transactional data into business-driven insights that help improve sales strategy, inventory planning, and promotional decisions.

This project simulates a real-world restaurant analytics scenario commonly handled by Data Analysts.

🎯 Business Problem

A pizza restaurant chain wants to:
Understand which pizzas generate the most revenue
Identify peak ordering times
Optimize inventory and menu offerings
Improve sales and promotional strategies
However, decisions are currently made without structured data analysis.

📂 Dataset Description

Source: Kaggle (Pizza Sales Dataset)
Total Records: ~48,620
Format: CSV files
Data Type: Transactional sales data

Files Used:

orders.csv – Order date & time
order_details.csv – Quantity and pizza IDs
pizzas.csv – Pizza size & price
pizza_types.csv – Pizza category & ingredients

🗂 Database Schema

The dataset follows a normalized relational structure:
orders → order-level information
order_details → line-level sales data
pizzas → pricing and size details
pizza_types → category and product metadata

Primary & Foreign Keys are used to establish relationships, enabling accurate joins and aggregations.

🛠 Tools & Technologies

SQL (MySQL)
Joins, Subqueries, CTEs
Aggregate functions
Date & time functions

🔍 Analysis Approach

Imported CSV files into a relational database
Designed schema with proper relationships
Wrote SQL queries to answer business-driven questions

Performed:

Revenue analysis
Time-based trend analysis
Product and category performance analysis
Interpreted results from a business perspective

❓ Key Business Questions Answered

What is the total revenue generated?
Which pizza categories and sizes perform best?
What are the top 5 pizzas by revenue and quantity sold?
At what time of day are orders highest?
How does demand vary across days and months?
Which products drive the majority of revenue?

📊 Key Insights

Medium and Large pizzas contribute the highest share of total revenue
Classic and Veggie categories dominate both sales volume and revenue
Peak order times align with lunch and evening hours
A small set of pizzas accounts for a significant percentage of total revenue
Revenue shows consistent growth over time, indicating stable demand

💡 Business Recommendations

Prioritize inventory for high-selling pizza sizes and categories
Focus marketing campaigns during peak ordering hours
Optimize the menu by promoting top-performing pizzas
Design combo offers around high-demand products

⚠ Limitations

No customer demographic data (age, location, loyalty)
No cost or profit margin information
Analysis based only on historical data (no forecasting)

🚀 Future Scope

Build a Power BI / Tableau dashboard
Add sales forecasting models
Perform customer segmentation if data becomes available
Integrate cost data for profitability analysis

📌 Conclusion

This project demonstrates the practical application of SQL for business analytics, showcasing how structured queries can uncover actionable insights from raw sales data.
It reflects real-world responsibilities of a Data Analyst working with transactional datasets.
