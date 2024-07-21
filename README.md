# Online Retail Customer Segmentation

This project analyzes an online retail dataset to segment customers based on their purchasing behavior using K-Means clustering. The analysis includes data cleaning, feature engineering, dimensionality reduction, and clustering to identify distinct customer segments.

## Key Steps in the Project

### 1. Data Cleaning and Preprocessing
- **Zero Unit Prices**: Removed records with zero unit prices to ensure only valid sales transactions were included.
- **Cancelled Transactions**: Identified and marked transactions with invoice numbers starting with 'C' as cancelled.
- **Date Splitting**: Extracted day, month, and weekday from the invoice date to analyze seasonal trends.

### 2. Feature Engineering
- **RFM Analysis**: 
  - **Recency**: Measured days since the last purchase for each customer.
  - **Frequency**: Counted the number of transactions and total quantity purchased.
  - **Monetary**: Calculated total and average spending per customer.
- **Unique Products**: Determined the variety of products purchased by each customer.
- **Cancellation Frequency**: Measured how often customers cancelled transactions.

### 3. Modeling
- **Feature Scaling**: Applied standardization to ensure features contributed equally to the model.
- **Principal Component Analysis (PCA)**: Reduced dimensions to three components, explaining over 80% of the variance.
- **K-Means Clustering**: Determined the optimal number of clusters using silhouette scores and identified three customer segments.

### 4. Cluster Analysis
- **Segment 0**: Occasional shoppers with average spending and a higher likelihood of returning purchases.
- **Segment 1**: One-off shoppers with low transaction volumes and a limited range of product purchases.
- **Segment 2**: Regular shoppers who spend the most, purchase a wide variety of products, and have a higher cancellation frequency.

## Conclusion
The project successfully segmented customers into three distinct groups, providing insights into their purchasing behavior. These insights can help tailor marketing strategies and improve customer engagement. Future work could involve using these segments for predictive modeling or targeted marketing campaigns.
