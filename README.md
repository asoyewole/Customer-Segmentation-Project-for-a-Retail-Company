# Customer Segmentation for a Retail Company

## Introduction

This project focuses on customer segmentation for an online retail company based in the UK, with customers from various countries. The dataset used for this project is sourced from the UCI data repository. This project follows the CRISP-DM approach, encompassing business understanding, data understanding, data preparation/exploration, and modeling. The aim is to showcase proficiency in data management, analysis, and modeling.

A key part of this project is the creation of an analytical dimensional database model using the star schema. To expand the dataset, we augmented the base dataset from UCI with additional data using the Python Faker library. However, the segmentation model is built solely on the original data extracted from the denormalized database.

## Business Understanding

For online businesses, cross-selling and up-selling to existing customers is crucial for success. This retail company has thousands of customers, making manual review of preferences impractical. By understanding customer habits, the company can tailor advertisements and promotions to relevant customer groups. Analyzing historical customer behavior will enhance the company's ability to target existing customers based on their preferences.

## Data Understanding

To address the business problem, we created customer segments using information on customer behavior and purchase history. These segments group customers with similar behaviors, aiding the development of a recommendation system. Meanwhile, exploratory data analysis provides immediate insights into existing data, informing model development.

The company maintains a normalized database for transaction processing. We created a new denormalized dimensional model optimized for analytical processing using PostgreSQL.

### Dimensional Modeling

A dimensional model was created to demonstrate expertise in SQL databases. We used the Faker library to generate additional fields such as first name, last name, address, phone, email, and password. This augmented data is spread across three tables: `customer_dim`, `stock_dim`, and `sales_measure`. A staging table was also included to load data into the dimensional model using SQL scripts.

### SQL and Bash Scripting

The conceptual database model was forward-engineered to generate SQL scripts for creating tables. We wrote a table loading script to extract data from the staging table and load it into the dimensions and fact table. A bash script was written to execute all SQL scripts, automating the process using crontab for regular updates.

## Data Preparation

Data extraction from the database was done using `psycopg2`, with the password securely stored in an `.env` file. We extracted the necessary data using `pandas.read_sql()` with a SQL payload.

### Exploratory Data Analysis

The exploratory data analysis includes identifying data size, reviewing samples, data types, and providing summary statistics. We handled missing values, duplicates, and zero unit prices, ensuring data cleanliness for further analysis.

### Data Cleansing

- **Missing Data**: Removed records with missing `customer_id` and `description`.
- **Duplicate Data**: Removed duplicate transactions identified as data entry errors.
- **Zero Unit Price**: Removed records with zero unit price.

### Feature Engineering

We engineered features like recency, frequency, and monetary value for segmentation analysis:

- **Recency**: Time since the last purchase.
- **Frequency**: Number of purchases made by a customer.
- **Monetary**: Total amount spent by a customer.

### Canceled Transactions and Amount Spent

Identified canceled transactions using invoice numbers starting with 'C'. Calculated the amount spent by each customer.

### Date Splitting

Split invoice dates into day, month, and year to identify seasonal trends in purchasing behavior.

## Conclusion

This project demonstrates expertise in data management, dimensional modeling, and customer segmentation. It provides valuable insights into customer behavior, aiding the development of targeted marketing strategies for the retail company.

---

Feel free to customize the content to better suit your project's specifics or add any additional sections if needed.
