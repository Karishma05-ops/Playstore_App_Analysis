 # 📱 Google Play Store Intelligence — End-to-End Business Analytics Project

> A complete data-to-decision project simulating how tech-driven companies like **PhonePe**, **CRED**, or **Paytm** use data to drive decisions around product performance, monetization, and user experience — built using Python, SQL, and Power BI.

---

## 📌 Project Objective

This project is built as a **business-focused analytics solution** for digital product teams, marketplaces, or app aggregators who want to:

- 🎯 Track app performance across metrics like installs, ratings, and size
- 💰 Analyze pricing trends and revenue generation for paid apps
- 🧒 Understand audience targeting through content ratings and genres
- 🧠 Drive category-level insights for strategic investments

---

## 🛠️ Tools & Tech Stack

| Tool/Language   | Purpose                                        |
|------------------|-------------------------------------------------|
| **Python**        | Data cleaning, feature engineering, EDA        |
| **SQL (MSSQL)**   | Solving real business problems with queries    |
| **Power BI**      | Executive dashboards and storytelling          |
| **DAX**           | Calculated KPIs and visual intelligence        |

---

## 🗂️ Repository Structure

📦 PlayStore-Business-Analytics
├── PlayStore_EDA_Cleaning.ipynb # Python notebook: cleaning, EDA, features
├── PlayStore_Insights_Queries.sql # SQL: 20+ business-driven query insights
├── App_Performance_Overview.pbix # Power BI Dashboard 1 - Operational Focus
├── Market_Insights_Dashboard.pbix # Power BI Dashboard 2 - Strategic Focus
├── google_cleaned.csv # Final cleaned dataset
└── README.md # This file

yaml
Copy
Edit

---

## 📊 Dataset Summary

A structured dataset of over 10,000 apps from Google Play Store containing:

| Feature           | Description                                   |
|-------------------|-----------------------------------------------|
| App               | App name                                      |
| Category          | App category (Games, Finance, Tools, etc.)    |
| Rating            | User rating (0–5 scale)                       |
| Installs          | Total installs                                |
| Type              | Free or Paid                                  |
| Price             | App price (for Paid apps)                     |
| Size              | App size in MB                                |
| Content Rating    | Age group targeting                           |
| Genres            | App sub-category                              |
| Last Updated      | Date of last update                           |

---

## 🔍 Business Problem Solving Approach

This project is not a theoretical analysis — it is built to **solve real product and marketing problems** in the digital app economy.

| Business Question                                  | How This Project Helps                               |
|---------------------------------------------------|-------------------------------------------------------|
| 💸 How do Free and Paid apps differ in performance? | Compare installs, size, and ratings across types      |
| 📈 Which categories drive the most revenue?        | Revenue trees and category-based DAX KPIs            |
| 🧒 Who are we building for — kids, teens, or all?  | Content rating distribution in dashboards             |
| 🧭 Where should a company invest next?             | Genre-level saturation and monetization charts        |
| 🧪 Are highly rated apps always most downloaded?   | Joint scatter analysis of installs vs ratings         |

---

## 📊 Power BI Dashboards (Interactive Storytelling)

### ✅ Dashboard 1: App Performance Overview

> Focused on **app-level operational metrics**

| Visual Type      | Insight Delivered                          |
|------------------|---------------------------------------------|
| KPI Cards        | Total Apps, Installs, Ratings, Paid Apps    |
| Bar Charts       | Avg Rating by Category                      |
| Line Chart       | App trends over months                      |
| Pie Chart        | Free vs Paid split                          |
| Table            | App-level financial and user KPIs           |
| Slicers          | Category, Type, Year, Content Rating        |

🎯 **Business Value**: Helps product managers and business analysts monitor app performance, user traction, and quality indicators.

---

### ✅ Dashboard 2: Market Intelligence & Strategic View

> Built for **leadership and product strategy**

| Visual Type        | Insight Delivered                               |
|--------------------|--------------------------------------------------|
| Revenue Treemaps    | Which categories generate most income            |
| Matrix              | Genre-level segmentation and performance         |
| Line Chart          | Install trends by year                           |
| Donut Chart         | Audience targeting by Content Rating            |
| Bar Chart (Top 10)  | Highest revenue-generating apps                  |
| Slicers             | Genre, Year, Type, Price, Content Rating         |

🎯 **Business Value**: Empowers decision-makers to invest in high-performing genres, re-price underperforming apps, and evaluate content strategy.

---

## 🧠 Key Business Insights Uncovered

✔️ **Free apps dominate in volume**, but **Paid apps contribute a disproportionate share to revenue**  
✔️ **Finance and Education apps** have better pricing power compared to Games  
✔️ **Teen and Everyone-rated apps** are most popular — ideal for scale-based monetization  
✔️ **Highly-rated apps are not always top-installed** — discover undervalued apps  
✔️ **Genres like Productivity and Health** are strong but under-monetized — opportunity zones

---

## 🐍 Python Highlights

📁 `PlayStore_EDA_Cleaning.ipynb`

| Task                        | Description                                      |
|-----------------------------|--------------------------------------------------|
| Data Cleaning               | Nulls, string parsing, outliers, type conversion |
| Feature Engineering         | Revenue, Size_MB, Pricing Buckets                |
| Exploratory Questions       | Installs vs Rating, Free vs Paid, Category stats |
| Visual Analysis             | Histograms, boxplots, bar charts                 |

---

## 🧾 Advanced SQL Query Highlights

📁 `PlayStore_Insights_Queries.sql`

| SQL Feature Used | Business Application                               |
|------------------|-----------------------------------------------------|
| CTEs             | Top category revenue extraction                     |
| Window Functions | Rank top apps by installs within each genre         |
| Subqueries       | Detect genres with below-median ratings             |
| Joins            | Compare installs across similar categories          |

🧠 All SQL queries are written to mimic real-time BI dashboard use-cases.

---

## 🎯 What Makes This Project Stand Out?

✅ **Solves real business problems**, not just technical puzzles  
✅ **Demonstrates full BI lifecycle**: Clean → Query → Visualize  
✅ Uses **advanced tools (Power BI, DAX, SQL Window functions)**  
✅ Built with storytelling and user experience in mind  
✅ Recruiter-ready structure with real-world dashboards

---

## 🔧 How to Use This Repository

1. Clone or download this repository
2. Run `PlayStore_EDA_Cleaning.ipynb` in Jupyter for data cleaning
3. Import `google_cleaned.csv` into SQL Server and run queries
4. Open `.pbix` files using Power BI Desktop
5. Explore slicers, filters, and insights dynamically

