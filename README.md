# 🍕 Pizza Sales Analysis using SQL

## 📌 Project Overview

This project analyzes pizza sales data to uncover revenue trends, customer ordering behavior, and product performance using SQL.
The goal is to translate raw transactional data into business-driven insights that help improve sales strategy, inventory planning, and promotional decisions.

This project simulates a real-world restaurant analytics scenario commonly handled by Data Analysts.

## 🎯 Business Problem
A pizza restaurant chain wants to:
- Identify pizzas generating the highest revenue
- Understand peak ordering times
- Optimize inventory and menu offerings
- Improve promotional and sales strategies  

Currently, these decisions are made without structured data analysis.

## 📂 Dataset Description

Source: Kaggle (Pizza Sales Dataset)
Total Records: ~48,620
Format: CSV files
Data Type: Transactional sales data

### Files Used:

- orders.csv – Order date & time
- order_details.csv – Quantity and pizza IDs
- pizzas.csv – Pizza size & price
- pizza_types.csv – Pizza category & ingredients

## 🗂 Database Schema

The dataset follows a normalized relational structure:
- orders → order-level information
- order_details → line-level sales data
- pizzas → pricing and size details
- pizza_types → category and product metadata
- Primary & Foreign Keys are used to establish relationships, enabling accurate joins and aggregations.

## 🛠 Tools & Technologies
- SQL (MySQL)
- Python (Pandas, Matplotlib, Seaborn)
- Jupyter Notebook


## 🔍 Analysis Approach

- Imported CSV files into a relational database
- Designed schema with proper relationships
- Wrote SQL queries to answer business-driven questions
- Python jupyter notebook for visuals through charts.

 ### Performed:

- Revenue analysis
- Time-based trend analysis
- Product and category performance analysis
- Interpreted results from a business perspective

## ❓Key Business Questions Answered

- What is the total revenue generated?
- Which pizza categories and sizes perform best?
- What are the top 5 pizzas by revenue and quantity sold?
- At what time of day are orders highest?
- How does demand vary across days and months?
- Which products drive the majority of revenue?

## 📊 Key Insights
- Medium and Large pizzas contribute the majority of total revenue  
- Classic and Veggie categories lead in both sales volume and revenue  
- Peak demand occurs during lunch and evening hours  
- Top 5 pizzas account for a significant portion of total sales  
- Revenue trends show consistent growth over time, indicating stable demand


## 💡 Business Recommendations

- Prioritize inventory for high-selling pizza sizes and categories
- Focus marketing campaigns during peak ordering hours
- Optimize the menu by promoting top-performing pizzas
- Design combo offers around high-demand products

## ⚠ Limitations

- No customer demographic data (age, location, loyalty)
- No cost or profit margin information
- Analysis based only on historical data (no forecasting)

## 🚀 Future Scope

- Build a Power BI / Tableau dashboard
- Add sales forecasting models
- Perform customer segmentation if data becomes available
- Integrate cost data for profitability analysis

## 📌 Conclusion
This project demonstrates how SQL can be used to analyze real-world transactional data and convert it into actionable business insights. It reflects practical responsibilities of a Data Analyst, including data modeling, KPI analysis, and decision-driven reporting.

