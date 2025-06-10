# Data-Analysis-using-SQL-and-Power-BI

This project is designed to analyze sales data and build an interactive dashboard to visualize key performance indicators (KPIs). It includes several phases: data preparation, table creation, writing SQL queries, designing a data model, and building a final dashboard.

---

## 📁 Project Hierarchy
```bash
SalesAnalyticsDashboard/
│
├── Dashboard/
│   ├── dashboard.pbip      # Power BI project file
│   └── dashboard.png       # Snapshot of the final dashboard
│
├── Data/
│   ├── DimCustomerData.csv  # Customer dimension data
│   ├── DimDate.csv          # Date dimension data
│   ├── DimLoyaltyInfo.csv   # Loyalty program information
│   ├── DimProductData.csv    # Product dimension data
│   ├── DimStoreData.csv      # Store dimension data
│   └── fact.csv             # Fact table with sales transactions
│
├── DDL/
│   └── DDL.sql              # SQL scripts for creating tables and schema
│
├── Queries/
│   ├── Business Requirements.md  # List of business questions addressed
│   └── queries.sql              # SQL queries to answer business requirements
│
└── Data Model.png             # Data model used in the dashboard
```
## Data Model (Snowflake Schema) Overview
![Data Model](https://github.com/user-attachments/assets/4643738a-122d-48c9-ae4e-3f522ec924fd)

The data model for the Sales Analytics Dashboard is structured using a snowflake schema, organizing data into multiple related tables.

### Fact Table

- **FACT**: This table contains quantitative data for analysis, specifically sales transactions. It includes measures such as:
  - `ORDER_ID`
  - `ORDER_DATETIME`
  - `PRODUCT_ID`
  - `STORE_ID`
  - `CUSTOMER_ID`
  - `ORDER_QUANTITY`
  - `TOTAL_VALUE`

### Dimension Tables

- **DIMPRODUCTDATA**: Contains details about products, including:
  - `BRAND`
  - `CATEGORY`
  - `PRODUCT_NAME`
  - `PRODUCT_TYPE`

- **DIMSTORE**: Provides information about stores, such as:
  - `ADDRESS`
  - `CITY`
  - `COUNTY`
  - `MANAGER_NAME`
  - `STORE_NUMBER`

- **DIMCUSTOMER**: Contains customer information, including:
  - `ADDRESS`
  - `CITY`
  - `CUSTOMER_UNIQ_ID`
  - `FIRST_NAME`
  - `LAST_NAME`
  - `GENDER`
  - `POSTCODE`

- **DIMDATE**: Includes date-related data, such as:
  - `YEAR`
  - `MONTH`
  - `DAY`
  - `WEEKDAY`

- **DIMLOYALTYINFO**: Holds details about customer loyalty programs, including:
  - `LOYALTY_PROGRAM_ID`
  - `PROGRAM_NAME`

### Relationships

The fact table (`FACT`) is connected to each dimension table through foreign keys:
- `PRODUCT_ID` links to `DIMPRODUCTDATA`
- `STORE_ID` links to `DIMSTORE`
- `CUSTOMER_ID` links to `DIMCUSTOMER`
- `DATE` links to `DIMDATE`


## 📊 Power BI Dashboard
The Power BI dashboard is the final visual layer of the project, built to present key insights from the sales data in a clear and interactive format.
![dashboard](https://github.com/user-attachments/assets/604f7676-8dfa-4b3c-a5fe-157900071689)


