import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt

st.title("Retail Analytics Dashboard")

# Load data
df = pd.read_csv("data/processed/retail_cleaned.csv")

st.subheader("Dataset Preview")
st.dataframe(df.head())

# -----------------------------
# Revenue by Country
# -----------------------------
st.subheader("Revenue by Country")

revenue_country = df.groupby("Country")["Revenue"].sum().sort_values(ascending=False).head(10)

fig, ax = plt.subplots()
revenue_country.plot(kind="bar", ax=ax)
ax.set_ylabel("Revenue")

st.pyplot(fig)

# -----------------------------
# Monthly Revenue
# -----------------------------
st.subheader("Monthly Revenue Trend")

df["InvoiceDate"] = pd.to_datetime(df["InvoiceDate"])
df["Month"] = df["InvoiceDate"].dt.to_period("M")

monthly_revenue = df.groupby("Month")["Revenue"].sum()

fig2, ax2 = plt.subplots()
monthly_revenue.plot(ax=ax2)

ax2.set_ylabel("Revenue")

st.pyplot(fig2)

# -----------------------------
# Top Products
# -----------------------------
st.subheader("Top Products")

top_products = df.groupby("Description")["Revenue"].sum().sort_values(ascending=False).head(10)

fig3, ax3 = plt.subplots()
top_products.plot(kind="barh", ax=ax3)

st.pyplot(fig3)