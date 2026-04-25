# 🛒 Retail Sales Analytics (SQL + Power BI)

## 📌 Overview
This project analyzes retail sales data to identify **revenue drivers, customer behavior patterns, and margin inefficiencies**.  
The goal is to demonstrate an **end-to-end analytical workflow**: data validation → transformation → analysis → insight generation → business recommendations.

---

## 🎯 Business Objective
Analyze multi-dimensional retail data to:
- Identify top-performing categories, products, and stores
- Understand customer behavior and retention patterns
- Detect pricing and discount-related margin issues
- Support data-driven business decisions

---

## 🛠️ Tools & Technologies
- **SQL**: Data cleaning, validation, transformation, and analysis  
- **Power BI**: Data modeling, DAX, and dashboard visualization  
- **Power Query**: Data transformation and shaping  

---

## 🧱 Data Workflow

### 1. Data Validation (SQL)
- Null checks and missing value handling  
- Duplicate detection  
- Referential integrity validation (PK/FK relationships)  

### 2. Data Transformation
- Structured raw data into analysis-ready tables  
- Created unified dataset combining transactions, customers, and products  

### 3. Data Modeling (Power BI)
- Star schema model  
- Defined relationships between fact and dimension tables  
- Created calculated measures using DAX  

---

## 📊 Dashboard Overview

### 1. Sales Overview
- Total Sales: **5.1M**
- Total Profit: **1.36M**
- Avg Margin: **26.8%**
- YoY Growth: **-27.4%**

Key Analysis:
- Monthly sales trends
- Category-level performance
- Store-level comparison
- Payment method distribution

---

### 2. Customer Analytics
- Retention Rate: ~90–100%
- Average Order Value (AOV): ~2900
- Customer segmentation based on:
  - Recency (days since last purchase)
  - Frequency (number of transactions)

Key Analysis:
- New vs returning customers
- High-value vs at-risk customers
- Top spending customers
- Geographic distribution

---

### 3. Store Performance
- Top-performing stores identified
- Regional sales contribution analysis
- Weekly sales trends (clear weekend uplift)

Key Analysis:
- Store-level revenue comparison
- Region-wise contribution (East leading)
- Day-wise sales behavior

---

### 4. Product & Pricing Analysis
- Category contribution:
  - Fashion (~45%)
  - Electronics (~42%)
  - Groceries (~12%)

Key Analysis:
- Top-selling products
- Margin vs discount relationship
- Product-level profitability

---

## 🔍 Key Insights

- **Fashion and Electronics contribute ~85% of total revenue**, making them core business drivers  
- **Groceries underperform (~12%)**, indicating potential issues in demand or positioning  
- **Sales peak in April and show consistent weekend uplift**, highlighting temporal demand patterns  
- **High-value customers cluster within low recency (<30 days) and high frequency (10–20 transactions)**  
- **Discounts above ~8% correlate with declining profit margins**, indicating pricing inefficiencies  

---

## 💡 Business Recommendations

- Focus inventory and marketing efforts on **Fashion and Electronics**
- Optimize **discount strategy** to prevent margin erosion
- Target **high-value customers** with retention campaigns
- Investigate underperformance of **Groceries category**
- Align promotions with **weekend demand spikes**

---

## 🧮 SQL Contribution

- Used **joins** to combine transaction, product, and customer datasets  
- Applied **aggregations** for revenue, profit, and category analysis  
- Used **window functions (RANK, ROW_NUMBER)** to identify top customers and products  
- Built **data validation checks** (nulls, duplicates, integrity constraints)  

---

## 📈 Project Value

This project demonstrates:
- Strong **data validation and structuring capability**
- Ability to **analyze business data using SQL**
- Skill in building **interactive dashboards using Power BI**
- Capability to convert **raw data into actionable insights**

---

## 📂 Project Structure

```
Retail-Sales-Analytics/
├── SQL/
│   ├── Data Cleaning Checks.sql
│   └── Business Analysis Queries.sql
├── Power BI/
│   └── Retail Sales Dashboard.pbix
└── README.md
```

---

## 🚀 Key Takeaway
This project reflects a complete analytical approach:
> Not just building dashboards, but **using data to drive business decisions**.
