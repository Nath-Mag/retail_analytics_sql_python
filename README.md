# Retail Analytics using SQL and Python

## Project Overview

This project analyzes an online retail dataset to understand customer purchasing behavior, product performance, and revenue patterns.  

The goal is to demonstrate how **SQL and Python can be combined to generate actionable business insights from transactional data**.

The analysis includes:

- Data cleaning and preprocessing
- SQL-based revenue analysis
- Customer segmentation using RFM (Recency, Frequency, Monetary)
- Business insights and strategic recommendations

This type of analysis is commonly used in **retail analytics, business intelligence, and data analyst roles**.



## Business Questions

This project aims to answer the following questions:

- Which countries generate the most revenue?
- Which products drive the highest sales?
- How does revenue change over time?
- Which customers are the most valuable?
- How can businesses segment customers for targeted marketing?



## Dataset

**Online Retail Dataset**

Source:  
UCI Machine Learning Repository / Kaggle

The dataset contains transactional data from a UK-based online retailer including:

- Invoice numbers
- Product descriptions
- Quantities purchased
- Unit prices
- Transaction timestamps
- Customer IDs
- Country of purchase



## Project Structure

retail_analytics_sql_python/
│
├── data/
│ ├── raw/
│ │ online_retail.csv
│ └── processed/
│ retail_cleaned.csv
│ customer_rfm_segments.csv
│
├── notebooks/
│ 01_data_cleaning.ipynb
│ 02_sql_analysis.ipynb
│ 03_customer_segmentation.ipynb
│ 04_business_insights.ipynb
│
├── sql/
│ queries.sql
│
├── dashboard/
│ app.py
│
├── requirements.txt
├── .gitignore
└── README.md


---

## Key Analysis Steps

### 1 Data Cleaning

The dataset required preprocessing to remove invalid records and prepare it for analysis.

Steps included:

- Removing cancelled transactions
- Removing negative quantities and prices
- Handling missing customer IDs
- Creating a revenue feature
- Converting transaction timestamps

---

### 2 SQL Analytics

SQL queries were used to analyze:

- Revenue by country
- Top selling products
- Monthly revenue trends
- Customer purchasing frequency

This demonstrates how SQL can be integrated with Python workflows.

---

### 3 Customer Segmentation (RFM)

Customers were segmented using the **RFM model**:

| Metric | Meaning |
|------|------|
| Recency | Days since last purchase |
| Frequency | Number of purchases |
| Monetary | Total spending |

This allows businesses to identify:

- High-value customers
- Loyal customers
- Customers at risk of churn

---

## Key Insights

### Revenue Distribution

The **United Kingdom dominates total revenue**, suggesting the business is heavily dependent on a single geographic market.



### Product Performance

A small number of products generate a large share of total revenue.

Top products include:

- PAPER CRAFT, LITTLE BIRDIE
- REGENCY CAKESTAND 3 TIER
- WHITE HANGING HEART T-LIGHT HOLDER

This suggests strong demand for decorative and gift-related products.



### Seasonal Sales Patterns

Revenue increases significantly between **September and November**, indicating strong seasonal demand related to holiday shopping.



### Customer Segmentation

Customer segmentation shows that:

- Most customers fall into the **Regular Customers** group
- A smaller group of **Best Customers** contribute disproportionately to revenue

These customers represent key opportunities for targeted marketing and loyalty programs.



## Business Recommendations

Based on the analysis:

1. **Customer Retention**

Implement loyalty programs to reward high-value customers.

2. **Targeted Marketing**

Re-engage customers who have not purchased recently.

3. **Product Strategy**

Increase stock and promotion of top-performing products.

4. **Market Expansion**

Explore opportunities to expand sales beyond the UK market to reduce geographic dependency.

---

## Tools and Technologies

Python  
Pandas  
SQL (SQLite)  
Matplotlib  
Seaborn  
Jupyter Notebook



## Skills Demonstrated

- Data Cleaning and Preprocessing
- SQL Analytics
- Exploratory Data Analysis
- Customer Segmentation (RFM)
- Business Insight Generation
- Data Visualization

---

## Author

Nathaniel Magit

