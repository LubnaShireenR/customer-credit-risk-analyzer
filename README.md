# Customer Credit Risk Analyzer

## End-to-End Credit Risk Analysis using Python, SQL & Power BI

---

## Project Overview

The Customer Credit Risk Analyzer is an end-to-end data analytics project focused on analyzing customer loan data, identifying patterns in loan defaults, and understanding different customer risk segments.

The project combines Python, SQL, and Power BI to transform raw credit-risk data into meaningful insights and an interactive business intelligence dashboard.

The complete workflow follows:

Data Cleaning → Exploratory Data Analysis → SQL Analysis → Risk Segmentation → Power BI Dashboard → Business Insights

---

## Project Objectives

The main objectives of this project are:

- Analyze customer loan and credit information
- Understand overall loan default behavior
- Identify patterns associated with higher default rates
- Analyze default rates across different loan grades
- Study the relationship between customer income and loan defaults
- Analyze the impact of previous default history
- Examine loan amount and loan-to-income relationships
- Analyze customer segments based on different risk characteristics
- Perform structured analysis using SQL
- Build an interactive Power BI dashboard
- Present credit-risk insights in a clear and business-friendly format

---

## Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| Python | Data cleaning and exploratory data analysis |
| Pandas | Data manipulation and analysis |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| Jupyter Notebook | Analysis environment |
| MySQL | SQL-based analysis |
| SQL | Data querying and aggregation |
| Power BI | Interactive dashboard |
| DAX | Power BI measures and calculated columns |
| GitHub | Project documentation and version control |

---

## Dataset

The project uses the Credit Risk Dataset, containing customer information, loan characteristics, income, employment details, credit history, and loan default status.

### Dataset Features

| Column | Description |
|---|---|
| person_age | Customer age |
| person_income | Annual customer income |
| person_home_ownership | Home ownership status |
| person_emp_length | Employment length |
| loan_intent | Purpose of the loan |
| loan_grade | Loan risk grade |
| loan_amnt | Loan amount |
| loan_int_rate | Loan interest rate |
| loan_status | Loan default status |
| loan_percent_income | Loan amount as a percentage of income |
| cb_person_default_on_file | Previous default history |
| cb_person_cred_hist_length | Credit history length |

---

## Project Workflow

Raw Credit Risk Dataset
        ↓
Data Cleaning with Python
        ↓
Exploratory Data Analysis
        ↓
Feature Engineering
        ↓
Cleaned Dataset
        ↓
SQL Analysis + Power BI
        ↓
Risk Analysis & Dashboard
        ↓
Credit Risk Insights

---

## 1. Data Cleaning

The raw dataset was cleaned and prepared using Python and Pandas.

### Cleaning Steps

- Loaded the raw CSV dataset
- Inspected the dataset structure
- Checked data types
- Checked missing values
- Identified duplicate records
- Removed duplicate records
- Identified unrealistic customer ages
- Removed records with unrealistic age values
- Identified unrealistic employment-length values
- Retained valid missing employment values before imputation
- Filled missing employment length using the median
- Filled missing loan interest rates using the median
- Verified the dataset after cleaning
- Confirmed that no missing values remained

### Final Dataset

After cleaning and preprocessing:

32,407 loan records were available for analysis.

---

## 2. Feature Engineering

Additional analytical columns were created to make customer segmentation and analysis easier.

### Age Groups

- 20–25
- 26–35
- 36–45
- 46–55
- 56–80

### Income Groups

- Below 30K
- 30K–60K
- 60K–100K
- 100K–200K
- Above 200K

### Loan Amount Groups

- Below 5K
- 5K–10K
- 10K–20K
- 20K–30K
- 30K–35K

### Employment Groups

- 0–2 years
- 3–5 years
- 6–10 years
- 11–20 years
- 21+ years

---

## 3. Exploratory Data Analysis

Exploratory Data Analysis was performed using Python, Pandas, Matplotlib, and Seaborn.

The analysis included:

- Default status distribution
- Default rate by loan grade
- Default rate by loan purpose
- Default rate by home ownership
- Default rate by income group
- Default rate by loan amount
- Default rate by previous default history
- Default rate by age group
- Default rate by employment group
- Average income by loan status
- Average loan amount by loan status
- Average interest rate by loan status
- Loan-to-income analysis
- Correlation analysis

---

## 4. Key Findings

### Overall Default Rate

The cleaned dataset contained:

- Total Loans: 32,407
- Defaulted Loans: 7,088
- Non-defaulted Loans: 25,319
- Overall Default Rate: 21.87%

### Loan Grade Analysis

| Loan Grade | Default Rate |
|---|---:|
| A | 9.96% |
| B | 16.32% |
| C | 20.76% |
| D | 59.05% |
| E | 64.49% |
| F | 70.54% |
| G | 98.44% |

### Loan Purpose Analysis

| Loan Purpose | Default Rate |
|---|---:|
| DEBT CONSOLIDATION | 28.68% |
| MEDICAL | 26.77% |
| HOME IMPROVEMENT | 26.15% |
| PERSONAL | 19.89% |
| EDUCATION | 17.26% |
| VENTURE | 14.86% |

### Home Ownership Analysis

| Home Ownership | Default Rate |
|---|---:|
| RENT | 31.61% |
| OTHER | 31.13% |
| MORTGAGE | 12.62% |
| OWN | 7.49% |

### Income Group Analysis

| Income Group | Default Rate |
|---|---:|
| Below 30K | 45.60% |
| 30K–60K | 23.76% |
| 60K–100K | 13.39% |
| 100K–200K | 9.27% |
| Above 200K | 11.96% |

### Previous Default History

| Previous Default History | Default Rate |
|---|---:|
| No | 18.44% |
| Yes | 37.86% |

### Loan-to-Income Analysis

| Loan Status | Average Loan % of Income |
|---|---:|
| Non-default | 14.88% |
| Default | 24.69% |

### Average Income by Loan Status

| Loan Status | Average Income |
|---|---:|
| Non-default | 70,598 |
| Default | 49,093 |

### Average Interest Rate by Loan Status

| Loan Status | Average Interest Rate |
|---|---:|
| Non-default | 10.49% |
| Default | 12.88% |

### Average Loan Amount by Loan Status

| Loan Status | Average Loan Amount |
|---|---:|
| Non-default | 9,239.41 |
| Default | 10,854.07 |

---

## 5. SQL Analysis

The cleaned dataset was imported into MySQL for structured querying and analysis.

### Database

credit_risk_db

### Table

credit_risk

### SQL Analysis Performed

- Total number of loans
- Total number of defaulted loans
- Total number of non-defaulted loans
- Overall default rate
- Default rate by loan grade
- Default rate by loan purpose
- Default rate by home ownership
- Default rate by income group
- Default rate by loan amount group
- Default rate by employment group
- Default rate by previous default history
- Average customer income
- Average loan amount
- Average interest rate
- Loan-to-income analysis
- Age group analysis
- High-risk customer segmentation

The complete SQL analysis is available in:

customer_credit_risk_analysis.sql

---

## 6. High-Risk Segment Analysis

A combined high-risk segment was created using multiple risk-related characteristics:

- Higher-risk loan grades
- Previous default history
- Higher loan-to-income ratio

The combined segment contained:

438 loans

The segment was further analyzed by loan grade to understand the observed default patterns among customers displaying multiple risk indicators.

---

## 7. Power BI Dashboard

An interactive Customer Credit Risk Dashboard was developed using Microsoft Power BI.

### KPI Cards

- Total Loans: 32K
- Defaulted Loans: 7K
- Default Rate: 21.87%
- Average Loan Amount: 9.59K

### Interactive Filters

- Loan Grade
- Loan Purpose
- Home Ownership

### Dashboard Visualizations

1. Default Rate by Loan Grade
2. Default Rate by Loan Purpose
3. Default Rate by Home Ownership
4. Default Rate by Income Group
5. Default Rate by Loan Amount
6. Default Rate by Previous Default History
7. Default Rate by Age Group
8. Loan Portfolio Status

---

## Dashboard Preview

<img width="1322" height="745" alt="Customer Credit Risk Analyzer Dashboard" src="https://github.com/user-attachments/assets/96494760-f2ce-468e-ae73-b17e63701bb4" />



---

## Project Structure

customer-credit-risk-analyzer/

├── Customer_Credit_Risk_Analyzer.ipynb
├── customer_credit_risk_analysis.sql
├── credit_risk_cleaned.csv
├── Customer_Credit_Risk_Analyzer.pbix
├── Customer Credit Risk Analyzer Dashboard.png
└── README.md

---

## Skills Demonstrated

### Data Analytics

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis
- Statistical Analysis
- Feature Engineering
- Customer Segmentation
- Credit Risk Analysis

### Python

- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook

### SQL & Database

- SQL
- MySQL
- SELECT statements
- Filtering
- GROUP BY
- Aggregations
- Conditional Analysis
- Risk Segmentation

### Power BI

- Microsoft Power BI
- DAX
- KPI Cards
- Calculated Columns
- Interactive Slicers
- Data Visualization
- Dashboard Design
- Business Intelligence
- Data Storytelling

---

## Business Insights

The analysis provides several observations from the dataset:

- Loan grade shows substantial differences in observed default rates.
- Customers with previous default history have a higher observed default rate than customers without previous default history.
- Lower-income groups show higher observed default rates in the analyzed dataset.
- Defaulted loans have a higher average loan-to-income ratio.
- Defaulted loans have a higher average interest rate.
- Defaulted loans have a higher average loan amount.
- Default rates vary across different loan purposes.
- Default rates vary across different home-ownership categories.
- Combining multiple risk indicators can help identify customer segments for further credit-risk assessment.

These findings describe patterns observed in the dataset and do not establish causal relationships.

---

## Project Highlights

This project demonstrates a complete end-to-end data analytics workflow:

Raw Dataset
    ↓
Python Data Cleaning
    ↓
Exploratory Data Analysis
    ↓
Feature Engineering
    ↓
MySQL Database
    ↓
SQL Analysis
    ↓
Risk Segmentation
    ↓
Power BI Dashboard
    ↓
Business Insights

---

## Future Improvements

Potential extensions to this project include:

- Building a machine-learning model for loan default prediction
- Developing a customer credit-risk scoring system
- Adding Power BI drill-through pages
- Creating more detailed customer segmentation
- Adding advanced risk indicators
- Comparing classification models
- Building predictive analytics for future loan defaults
- Deploying the dashboard for broader business use

---

## Project Files

### Python Notebook

Customer_Credit_Risk_Analyzer.ipynb

Contains:

- Data loading
- Data cleaning
- Missing-value treatment
- Duplicate removal
- Feature engineering
- Exploratory analysis
- Visualizations
- Key findings

### SQL Script

customer_credit_risk_analysis.sql

Contains the SQL queries used for:

- Credit-risk analysis
- Default-rate calculations
- Customer segmentation
- Aggregation and comparison

### Cleaned Dataset

credit_risk_cleaned.csv

Contains the cleaned and processed dataset used for the analysis.

### Power BI Dashboard

Customer_Credit_Risk_Analyzer.pbix

Contains the interactive Power BI dashboard and DAX measures.

### Dashboard Image

Customer Credit Risk Analyzer Dashboard.png

Contains a preview of the completed dashboard.

---

## Conclusion

The Customer Credit Risk Analyzer demonstrates an end-to-end approach to data analytics by combining Python, SQL, and Power BI.

The project takes raw credit-risk data through data cleaning, exploratory analysis, SQL-based investigation, customer segmentation, and interactive visualization.

The final dashboard provides a clear view of loan defaults, customer characteristics, loan patterns, and observed risk segments.

---

## 👩‍💻 Developed By

**Lubna Shireen R**

**Student | Data Enthusiast | Learner**

## ⭐ Support

If you found this project useful, consider giving it a star ⭐ 



Python • SQL • MySQL • Power BI • Pandas • Data Analytics • Data Visualization • Business Intelligence
