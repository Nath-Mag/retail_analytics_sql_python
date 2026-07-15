# Retail Analytics & Customer Segmentation

**SQL · Python · Power BI · RFM Analysis · Business Intelligence**

An end-to-end retail analytics project that transforms transactional data into customer, product, revenue, and market insights.


## Executive Summary

This project analyses transactional data from a UK-based online retailer to understand revenue performance, customer behaviour, product demand, and geographic concentration.

Using Python for data preparation, SQLite for business analysis, RFM modelling for customer segmentation, and Power BI for interactive reporting, I developed a reproducible workflow that converts raw transaction records into decision-ready insights.

The analysis found strong seasonal demand between September and November, substantial dependence on the UK market, and a relatively small group of high-value customers contributing disproportionately to revenue. These findings support targeted retention, seasonal inventory planning, product prioritisation, and geographic diversification.

## Business Problem

Retail transaction data contains valuable information about customer value, buying frequency, product demand, seasonality, and market exposure. However, raw transactions alone do not tell decision-makers:

- Which customers should receive the greatest retention attention?
- Which products contribute most to revenue?
- When does demand increase or decline?
- How dependent is the business on a particular market?
- Which customer groups require different marketing strategies?

This project addresses those questions through a combined SQL, Python, customer-segmentation, and dashboarding workflow.

## Project Objectives

- Clean and validate raw transactional data.
- Build repeatable SQL queries for commercial analysis.
- measure revenue performance across products, countries, and time.
- Segment customers using Recency, Frequency, and Monetary value.
- Identify seasonal patterns and commercial risk.
- Present findings through an interactive Power BI dashboard.
- Translate analytical results into practical business recommendations.

## Key Business Questions

1. Which countries generate the most revenue?
2. Which products contribute most strongly to sales?
3. How does revenue change over time?
4. Which customers are the most valuable?
5. Which customers may require re-engagement?
6. How can customer segments support targeted marketing?
7. What commercial risks are visible in the revenue profile?

## Analytical Workflow

```text
Raw Transaction Data
        ↓
Data Quality Assessment
        ↓
Cleaning and Transformation with Python
        ↓
Processed Analytical Dataset
        ↓
SQL-Based Revenue and Customer Analysis
        ↓
RFM Customer Segmentation
        ↓
Business Insight Development
        ↓
Power BI Dashboard and Recommendations
```

## Dataset

The project uses the Online Retail dataset containing transactional records from a UK-based online retailer.

The available fields include:

| Field | Description |
|---|---|
| InvoiceNo | Transaction identifier |
| StockCode | Product identifier |
| Description | Product description |
| Quantity | Number of units purchased |
| InvoiceDate | Transaction date and time |
| UnitPrice | Price per unit |
| CustomerID | Customer identifier |
| Country | Customer market |
| Revenue | Calculated as quantity × unit price |

### Data-quality considerations

The raw data required several validation and cleaning steps:

- Removed cancelled transactions.
- Excluded records with non-positive quantities or prices.
- Addressed missing customer identifiers where customer-level analysis required them.
- Converted transaction timestamps into an analytical datetime format.
- Created a revenue field from quantity and unit price.
- Exported validated datasets for SQL, segmentation, and dashboard analysis.

## Methodology

### 1. Data preparation

Python and pandas were used to inspect, clean, validate, and transform the raw transactional data.

The cleaning process produced a consistent analytical dataset suitable for revenue analysis, SQL querying, RFM segmentation, and Power BI reporting.

### 2. SQL business analysis

SQLite queries were developed to examine:

- Revenue by country.
- Monthly revenue trends.
- Highest-performing products.
- Customer order frequency.
- Customer spending.
- Geographic revenue concentration.

The SQL queries are available in [`sql/queries.sql`](sql/queries.sql).

### 3. RFM customer segmentation

Customers were evaluated using three behavioural measures:

| Metric | Business meaning |
|---|---|
| Recency | How recently the customer purchased |
| Frequency | How often the customer purchased |
| Monetary | How much the customer spent |

RFM scores were used to group customers into actionable segments such as:

- Best Customers.
- Loyal Customers.
- Regular Customers.
- At-Risk Customers.
- Low-Value or Inactive Customers.

This creates a more useful view of the customer base than total spending alone.

### 4. Business intelligence dashboard

A Power BI dashboard was developed to provide a clear overview of:

- Total revenue.
- Transaction and customer activity.
- Monthly performance.
- Revenue by country.
- Highest-performing products.
- Customer-segment distribution.

The dashboard allows users to move from a high-level performance view to more focused customer, product, and market analysis.

## Key Findings

### Revenue and market concentration

The United Kingdom generated the majority of revenue, showing that the retailer was heavily dependent on a single geographic market.

This concentration creates exposure to changes in UK demand and suggests an opportunity to develop higher-potential international markets.

### Seasonal demand

Revenue rose substantially between September and November.

This indicates strong pre-holiday purchasing activity and suggests that inventory, staffing, and marketing plans should be prepared before the seasonal peak begins.

### Product performance

A relatively small group of products accounted for a meaningful share of sales.

Leading items included:

- PAPER CRAFT, LITTLE BIRDIE
- REGENCY CAKESTAND 3 TIER
- WHITE HANGING HEART T-LIGHT HOLDER

The results indicate particularly strong demand for gift and decorative products.

### Customer value

Most customers were classified as regular customers, while a smaller high-value segment contributed disproportionately to revenue.

This means customer strategy should not treat every buyer identically. High-value customers warrant retention attention, while inactive or at-risk customers may require carefully targeted re-engagement.

## Business Recommendations

### 1. Protect high-value customer relationships

Develop loyalty or early-access initiatives for customers with strong frequency and monetary scores.

The aim should be to retain valuable customers without applying unnecessary incentives to buyers who are already likely to return.

### 2. Use segment-specific marketing

Replace broad campaigns with customer-specific actions:

- Reward loyal and high-value customers.
- Re-engage previously valuable customers whose recency has declined.
- Encourage promising new customers to make a second purchase.
- Avoid excessive marketing expenditure on persistently low-value groups.

### 3. Prepare for seasonal demand earlier

Use the September-to-November pattern to guide:

- Inventory planning.
- Campaign timing.
- Operational capacity.
- Product availability.
- Seasonal forecasting.

Preparation should begin before the observed revenue peak.

### 4. Prioritise proven products carefully

Maintain reliable stock availability for consistently high-performing products while monitoring whether revenue is overly concentrated in a small number of items.

### 5. Reduce geographic concentration risk

Investigate markets outside the UK using customer volume, average order value, repeat-purchase behaviour, logistics cost, and growth potential.

Expansion decisions should be evidence-based rather than driven by revenue totals alone.

## Dashboard

[View Dashboard](dashboard.png)

The dashboard summarises the project’s main performance, customer, product, and geographic findings.

> The repository currently contains a dashboard image. A future improvement is to publish an interactive version or provide the Power BI project file where licensing and file-size constraints allow.

## Repository Structure

```text
retail_analytics_sql_python/
│
├── data/
│   └── processed/
│       ├── retail_cleaned.csv
│       └── customer_rfm_segments.csv
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_sql_analysis.ipynb
│   ├── 03_customer_segmentation.ipynb
│   └── 04_business_insights.ipynb
│
├── sql/
│   └── queries.sql
│
├── dashboard.png
├── requirements.txt
├── runtime.txt
├── .gitignore
└── README.md
```

## Notebook Guide

| Notebook | Purpose |
|---|---|
| `01_data_cleaning.ipynb` | Validates and prepares transactional data |
| `02_sql_analysis.ipynb` | Performs revenue, product, country, and customer analysis |
| `03_customer_segmentation.ipynb` | Calculates RFM metrics and assigns customer segments |
| `04_business_insights.ipynb` | Interprets findings and develops recommendations |

## Tools and Technologies

- **Python:** data preparation, validation, analysis, and segmentation.
- **pandas:** data manipulation and transformation.
- **SQLite / SQL:** commercial queries and aggregation.
- **Power BI:** dashboard development and KPI reporting.
- **Matplotlib and Seaborn:** exploratory visualisation.
- **Jupyter Notebook:** reproducible analytical workflow.
- **Git and GitHub:** version control and project documentation.

## Skills Demonstrated

- SQL querying.
- Data cleaning and validation.
- Revenue and KPI analysis.
- Customer segmentation.
- Product and market analysis.
- Business intelligence reporting.
- Commercial risk identification.
- Data visualisation.
- Analytical storytelling.
- Evidence-based recommendations.

## How to Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/Nath-Mag/retail_analytics_sql_python.git
cd retail_analytics_sql_python
```

### 2. Create and activate a virtual environment

```bash
python -m venv .venv
```

**Windows**

```bash
.venv\Scripts\activate
```

**macOS/Linux**

```bash
source .venv/bin/activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the notebooks in order

```text
01_data_cleaning.ipynb
02_sql_analysis.ipynb
03_customer_segmentation.ipynb
04_business_insights.ipynb
```

Run the notebooks sequentially because later stages depend on processed files generated earlier in the workflow.

## Limitations

- The analysis is based on historical transactions from one retailer.
- Transactional behaviour does not explain customer motivations.
- Geographic revenue comparisons do not account for market size, logistics costs, or local profitability.
- RFM segmentation is rule-based and may require recalibration for another business.
- The analysis is descriptive rather than causal.
- Recommendations should be tested before full commercial implementation.

## Future Improvements

- Add cohort-based retention analysis.
- Develop a customer lifetime value model.
- Create a repeatable ETL pipeline.
- Add automated data-quality tests.
- Analyse product combinations using market-basket techniques.
- Build revenue or demand forecasts.
- Add campaign profitability and incentive analysis.
- Publish an interactive dashboard.
- Introduce unit tests and continuous integration.

## Author

**Nathaniel Magit**

Data Scientist and Analyst specialising in Python, SQL, statistics, machine learning, and business intelligence.

[GitHub Profile](https://github.com/Nath-Mag)
