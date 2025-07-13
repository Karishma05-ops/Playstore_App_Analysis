# 📊 Google Play Store App Analytics — End-to-End BI Project

A comprehensive data analysis project built to simulate the real-world workflow of a **Business Analyst** at a product-driven company. This project utilizes a public Google Play Store dataset and demonstrates proficiency in:

- 📌 Data Cleaning & Feature Engineering using **Python**
- 📌 Business Problem Solving using **Advanced SQL**
- 📌 Dashboard Design & Storytelling using **Power BI**

> ✅ Designed to highlight practical data skills with an emphasis on business impact, this project is ideal for showcasing analytical capabilities in interviews and portfolios.

---

## 🔍 Project Overview

This project analyzes over 10,000 mobile applications from the Google Play Store to uncover trends in app performance, user engagement, monetization strategies, and market segmentation.

The analysis is structured into three key phases:

1. **Data Preparation & EDA (Python)**
2. **Business Analysis (SQL)**
3. **Interactive Reporting (Power BI)**

---

## 🧰 Tools & Technologies

| Tool         | Purpose                                      |
|--------------|----------------------------------------------|
| `Python (Jupyter)` | Data cleaning, EDA, feature creation        |
| `MS SQL Server`     | Querying cleaned data for business insights |
| `Power BI`         | Dashboard creation and data visualization  |
| `Excel/CSV`        | Final cleaned dataset for SQL & BI          |

---

## 📂 Repository Structure

```bash
📦 PlayStore-App-Analytics
├── 📁 Python_Cleaning_EDA
│   └── PlayStore_EDA_Cleaning.ipynb
├── 📁 SQL_Analysis
│   └── PlayStore_Insights_Queries.sql
├── 📁 PowerBI_Dashboards
│   ├── App_Performance_Overview.pbix
│   └── Market_Insights_Dashboard.pbix
├── 📁 Dataset
│   └── google_cleaned.csv
└── README.md


graph LR
A[Raw Dataset] --> B[Python: EDA & Feature Engineering]
B --> C[SQL Server: Business Querying]
C --> D[Power BI: Dashboard Reporting]

📌 Step 1 — Data Cleaning & EDA (Python)
Performed in Jupyter using pandas, matplotlib, and seaborn.

Highlights:
Removed duplicates, missing values, outliers

Converted text-based columns (e.g., Size, Price)

Feature Engineering:

Revenue column for paid apps

Size in MB

Price buckets

Explored:

Most installed categories

Rating vs installs

Free vs Paid app trends

📁 File: PlayStore_EDA_Cleaning.ipynb

🧠 Step 2 — Business Queries (SQL)
The cleaned dataset was imported into SQL Server, and business-focused queries were used to solve practical problems.

Techniques Used:
✅ Joins

✅ CTEs (Common Table Expressions)

✅ Window Functions (RANK(), ROW_NUMBER())

✅ Subqueries

✅ Aggregates and CASE logic

Sample Questions Answered:
Which category generates the highest average revenue?

Which genres attract the most users but have low ratings?

What is the revenue contribution of paid apps vs free apps?

Which are the top 10 highest-rated apps by install volume?

📁 File: PlayStore_Insights_Queries.sql

📊 Step 3 — Dashboards (Power BI)
Two executive-level dashboards were created using the output of SQL queries.

📈 Dashboard 1: App Performance Overview
Focus: Individual app metrics

Visuals: KPI cards, Bar charts, Pie charts, Line chart

Slicers: Category, Type, Content Rating, Month

📁 File: App_Performance_Overview.pbix

📉 Dashboard 2: Market Insights Dashboard
Focus: Segment-level trends and monetization

Visuals: Revenue TreeMap, Top Paid Apps, Genre Matrix

Slicers: Category, Type, Genre, Year, Rating, Installs

Advanced Visuals: Decomposition Tree, Scatter Plot

📁 File: Market_Insights_Dashboard.pbix


💡 Key Business Insights
💰 Finance & Health categories drive higher revenue per app

📉 Some high-install apps suffer from poor ratings, suggesting quality issues

🔒 Paid apps comprise a small fraction of the market but dominate monetization

📈 User downloads are seasonal, peaking mid-year

✅ Why This Project Matters
✔️ Demonstrates end-to-end analytical thinking
✔️ Shows technical execution across Python, SQL, and BI
✔️ Aligns with real business KPIs (Revenue, Ratings, Installs)
✔️ Visual storytelling through dashboards

This project was built to reflect real-world analyst responsibilities and provide business stakeholders with actionable insights.

🚀 Getting Started
Step	Action
1. Python Notebook	Run .ipynb in Jupyter Lab
2. SQL Queries	Load .sql into SSMS or Azure
3. Power BI	Open .pbix files in Power BI Desktop
