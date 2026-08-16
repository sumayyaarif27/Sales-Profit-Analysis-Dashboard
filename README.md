Sales & Profit Analysis Dashboard

An end-to-end data analytics project analyzing sales and profit performance across regions, categories, and time — using Excel for data preparation, SQL for business analysis, and Power BI for an interactive dashboard.

Tools Used
Excel – data cleaning and initial exploration
SQL (SQLite) – business analysis queries
Power BI – interactive dashboard and visualization

Project Workflow
1. Data Preparation – Cleaned and structured the sales dataset in Excel (Order ID, Region, Category, Sales, Profit, Discount, etc.)
2. SQL Analysis – Imported the dataset into a SQLite database and wrote queries to answer key business questions
(see [Sales_Analysis_Queries.sql](Sales_Analysis_Queries.sql))
3. Power BI Dashboard – Built an interactive dashboard with KPI cards, slicers, and visuals to explore trends and drill into regions, categories, and time periods

Key Business Insights
- East region generates the highest sales (~₹1.02 Cr), ahead of South, West, and North
- Keyboard is the most profitable product, followed closely by Redmi, OnePlus, and Samsung phones
- Electronics dominates the business, contributing over **78%** of total sales and profit
- September is the peak sales month, nearly 3x February's sales (the weakest month)
- The business maintains **disciplined pricing** — no order exceeds a 20% discount, protecting profit margins

 Dashboard Preview
![Dashboard Screenshot](dashboard_overview.png)

Files in this Repository
- [Sales_Profit_Analysis_Dashboard.pbix](Sales_Profit_Analysis_Dashboard.pbix) – Power BI dashboard file
- [PowerBI_Sales_Dashboard_Dataset.xlsx](PowerBI_Sales_Dashboard_Dataset.xlsx) – cleaned dataset used for analysis
- [Sales_Analysis_Queries.sql](Sales_Analysis_Queries.sql) – SQL queries with comments and insights
