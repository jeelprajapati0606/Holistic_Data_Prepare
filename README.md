# 🚀 Holistic Data Preparer

<p align="center">

<img src="https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python">

<img src="https://img.shields.io/badge/Pandas-Data%20Processing-150458?style=for-the-badge&logo=pandas&logoColor=white" alt="Pandas">

<img src="https://img.shields.io/badge/NumPy-Numerical%20Computing-013243?style=for-the-badge&logo=numpy&logoColor=white" alt="NumPy">

<img src="https://img.shields.io/badge/Scikit--Learn-Preprocessing-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white" alt="Scikit-Learn">

<img src="https://img.shields.io/badge/SQL-Data%20Integration-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL">

<img src="https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white" alt="Jupyter">

</p>

<p align="center">
  <strong>A complete data preparation and feature engineering workflow for integrating, understanding, cleaning, transforming, and preparing heterogeneous data for Machine Learning.</strong>
</p>


---

## 🔗 Quick Links

<p align="center">

<a href="YOUR_PROJECT_DEMO_URL">
  <img src="https://img.shields.io/badge/▶%20LIVE%20PROJECT%20DEMO-6F42C1?style=for-the-badge" alt="Project Demo">
</a>

<a href="https://github.com/jeelprajapati0606/Holistic_Data_Prepare/blob/main/Holistic_Data_Preparer-checkpoint.ipynb" target="_blank">
  <img src="https://img.shields.io/badge/📓%20Jupyter%20Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white">
</a>



</p>



---


# 🎯 Project Overview

**Holistic Data Preparer** is a data engineering and preprocessing project designed to demonstrate how data from different sources can be collected, integrated, explored, profiled, and prepared for downstream Machine Learning workflows.

The project works with multiple data formats:

* 📄 CSV
* 🗂️ JSON
* 🛢️ SQL / SQLite
* 🌐 API-based data

The notebook combines customer credit-risk information from different sources using `customer_id` as the common key and creates an integrated dataset for further analysis and preprocessing.

The resulting integrated dataset contains:

> **1,040 rows × 32 columns**

The project also demonstrates missing-value analysis, numerical and categorical data exploration, statistical summaries, and automated data profiling.

---

# ❗ Problem Statement

Real-world Machine Learning projects rarely receive data from a single clean source.

Data may be distributed across:

```text
CSV files
   ↓
JSON files
   ↓
SQL databases
   ↓
APIs
   ↓
Different schemas
   ↓
Missing values
   ↓
Duplicate information
   ↓
Inconsistent columns
   ↓
Final ML-ready dataset
```

The goal of this project is to build a structured workflow that brings these heterogeneous sources together and prepares the resulting data for Machine Learning.

---

# 🎯 Project Objective

The major objectives of this project are:

* Collect data from multiple sources
* Understand different data formats
* Load CSV data using Pandas
* Load JSON data using Pandas
* Read SQL data using SQLite
* Fetch data from an API
* Integrate datasets using a common customer identifier
* Explore dataset structure
* Analyze numerical variables
* Analyze categorical variables
* Identify missing values
* Generate automated profiling reports
* Prepare the dataset for future Machine Learning tasks

---

# 🔄 Project Workflow

```text
                    ┌──────────────────┐
                    │   Data Sources   │
                    └────────┬─────────┘
                             │
          ┌──────────────────┼──────────────────┐
          │                  │                  │
          ▼                  ▼                  ▼
     ┌─────────┐        ┌─────────┐        ┌─────────┐
     │   CSV   │        │  JSON   │        │   SQL   │
     └────┬────┘        └────┬────┘        └────┬────┘
          │                  │                  │
          └──────────────────┼──────────────────┘
                             │
                             ▼
                   ┌──────────────────┐
                   │ Data Integration │
                   │     & Merge      │
                   └────────┬─────────┘
                            │
                            ▼
                   ┌──────────────────┐
                   │ Data Exploration │
                   └────────┬─────────┘
                            │
                            ▼
                   ┌──────────────────┐
                   │ Data Quality     │
                   │    Analysis      │
                   └────────┬─────────┘
                            │
                            ▼
                   ┌──────────────────┐
                   │ Missing Values   │
                   │    Analysis      │
                   └────────┬─────────┘
                            │
                            ▼
                   ┌──────────────────┐
                   │ Data Profiling   │
                   └────────┬─────────┘
                            │
                            ▼
                   ┌──────────────────┐
                   │ Feature/Data     │
                   │ Preprocessing    │
                   └────────┬─────────┘
                            │
                            ▼
                   ┌──────────────────┐
                   │ ML-Ready Dataset │
                   └──────────────────┘
```

---

# 🏗️ Architecture

```text
                    HOLISTIC DATA PREPARER
                              │
       ┌──────────────────────┼──────────────────────┐
       │                      │                      │
       ▼                      ▼                      ▼
  Customer Risk          Customer Metadata      Repayment Data
      CSV                     JSON                  SQL
       │                      │                      │
       └──────────────────────┼──────────────────────┘
                              │
                              ▼
                     Customer ID Join
                              │
                              ▼
                       Integrated Data
                              │
                              ▼
                    Data Understanding
                              │
             ┌────────────────┼────────────────┐
             │                │                │
             ▼                ▼                ▼
         Statistics       Missing Data      Categories
             │                │                │
             └────────────────┼────────────────┘
                              │
                              ▼
                       Data Profiling
                              │
                              ▼
                    Preprocessing Pipeline
                              │
                              ▼
                     Machine Learning
```

---

# ✨ Features

## 📥 Multi-Source Data Acquisition

The project demonstrates data loading from:

| Source                 | Format | Tool     |
| ---------------------- | ------ | -------- |
| Credit Risk Data       | CSV    | Pandas   |
| Customer Metadata      | JSON   | Pandas   |
| Customer Master        | SQL    | SQLite   |
| Loan Repayment History | SQL    | SQLite   |
| Economic Indicators    | API    | Requests |

---

## 🔗 Data Integration

Multiple datasets are connected using:

```python
customer_id
```

The project performs:

```python
merge()
```

operations using a left join.

Example:

```python
sql_data = customer_master.merge(
    loan_repayment_history,
    on="customer_id",
    how="left"
)
```

The integrated dataset is then combined with other sources.

---

# 📊 Dataset

The primary credit-risk dataset contains fields such as:

| Column              | Description                      |
| ------------------- | -------------------------------- |
| `customer_id`       | Unique customer identifier       |
| `annual_income`     | Customer annual income           |
| `loan_amount`       | Requested/associated loan amount |
| `loan_purpose`      | Purpose of the loan              |
| `credit_score`      | Customer credit score            |
| `repayment_history` | Repayment behavior indicator     |
| `transaction_count` | Number of transactions           |
| `spending_ratio`    | Spending ratio                   |
| `default_flag`      | Credit default target            |

The notebook initially loads the CSV using:

```python
transaction = pd.read_csv("customer_credit_risk.csv")
```

The source CSV contains **1,000 records and 9 columns** before integration.

---

# 🗂️ Customer Metadata

Customer information is loaded from JSON:

```python
customer = pd.read_json("customer_metadata.json")
```

The metadata includes information such as:

* Customer ID
* Name
* Age
* Gender
* Region
* Education level
* Employment type
* Annual income
* Loan amount
* Credit score
* Loan purpose
* Join date

---

# 🛢️ SQL Data Integration

The project also uses SQLite for relational data.

```python
conn = sqlite3.connect("customer_credit_risk.db")

with open("customer_credit_risk_new.sql", "r") as file:
    sql_script = file.read()

conn.executescript(sql_script)
```

Two SQL datasets are queried:

```sql
customer_master
loan_repayment_history
```

The notebook reads both tables into Pandas DataFrames.

---

# 🌐 API Data Acquisition

The project also demonstrates API-based data acquisition using `requests`.

```python
import requests

url = "https://example.com/api/economic-indicators"

response = requests.get(url)

data = response.json()

economic_df = pd.DataFrame(data)
```

> **Note:** The notebook uses `example.com` as the API endpoint, so this section is demonstrated as an API ingestion pattern rather than a verified live economic-data source.

---

# 🔀 Data Integration

The main datasets are integrated using `customer_id`.

```python
final_df = transaction.merge(
    customer,
    on="customer_id",
    how="left"
)

final_df = final_df.merge(
    sql_data,
    on="customer_id",
    how="left"
)
```

This creates the final integrated DataFrame.

The resulting DataFrame has:

```text
1040 rows
32 columns
```

---

# 🔍 Data Understanding

The project performs several data-understanding operations.

### Shape

```python
final_df.shape
```

Output:

```text
(1040, 32)
```

### Dataset Information

```python
final_df.info()
```

The integrated dataset contains:

* 1,040 records
* 32 columns
* Numerical and categorical variables
* Missing values across multiple columns

---

# 📈 Statistical Analysis

Numerical variables are summarized using:

```python
final_df.describe()
```

This provides:

* Count
* Mean
* Standard deviation
* Minimum
* 25th percentile
* Median
* 75th percentile
* Maximum

Example numerical variables include:

```text
annual_income
loan_amount
credit_score
repayment_history
transaction_count
spending_ratio
default_flag
age
payment_amount
missed_payment
```

---

# 🏷️ Categorical Analysis

Categorical variables are explored using:

```python
final_df.describe(include="object")
```

This helps identify:

* Count
* Number of unique values
* Most frequent category
* Frequency of the most frequent category

Examples include:

```text
loan_purpose
gender
region
education_level
employment_type
payment_status
```

---

# 🚨 Data Quality Analysis

The project explicitly checks missing values using:

```python
final_df.isnull().sum()
```

This identifies incomplete fields across the integrated dataset.

For example, the notebook identifies missing values in fields such as:

```text
annual_income_x
credit_score_x
repayment_history
gender_x
employment_type_x
```

and substantial missingness in the `_y` columns generated by the integration process.

---

# 🧪 Automated Data Profiling

The project uses **YData Profiling** to automatically generate a comprehensive dataset report.

The generated report is titled:

```text
Customer Credit Risk Data Quality Report
```

The notebook output indicates:

```text
YData Profiling v4.18.4
```

This profiling step helps inspect dataset quality and characteristics in a structured HTML report.

---

# 🧠 Machine Learning Preparation

The notebook imports several preprocessing tools from Scikit-Learn.

### Imputation

```python
SimpleImputer
KNNImputer
IterativeImputer
```

### Scaling

```python
StandardScaler
MinMaxScaler
MaxAbsScaler
RobustScaler
```

### Encoding

```python
OneHotEncoder
OrdinalEncoder
LabelEncoder
```

### Transformation

```python
FunctionTransformer
PowerTransformer
```

### Pipeline

```python
ColumnTransformer
Pipeline
```

These components provide the foundation for converting raw heterogeneous data into a format suitable for Machine Learning.

---

# 🧩 Preprocessing Toolkit

The project covers a broad preprocessing toolkit:

```text
Missing Value Handling
        ↓
Categorical Encoding
        ↓
Numerical Scaling
        ↓
Feature Transformation
        ↓
Column Transformation
        ↓
Pipeline Construction
        ↓
Machine Learning Dataset
```

---

# 🛠️ Technology Stack

| Technology          | Purpose                      |
| ------------------- | ---------------------------- |
| 🐍 Python           | Main programming language    |
| 🐼 Pandas           | Data manipulation            |
| 🔢 NumPy            | Numerical operations         |
| 📊 Matplotlib       | Visualization                |
| 🎨 Seaborn          | Statistical visualization    |
| 🤖 Scikit-Learn     | Preprocessing & ML utilities |
| 🗄️ SQLite          | SQL database integration     |
| 🌐 Requests         | API data acquisition         |
| 📋 YData Profiling  | Automated data profiling     |
| 📓 Jupyter Notebook | Development environment      |

---

# 📦 Python Libraries

Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn scikit-learn scipy requests ydata-profiling jupyter
```

---

# 📁 Project Structure

Recommended GitHub repository structure:

```text
Holistic-Data-Preparer/
│
├── 📓 Holistic_Data_Preparer.ipynb
│
├── 📂 data/
│   ├── customer_credit_risk.csv
│   ├── customer_metadata.json
│   ├── customer_credit_risk.db
│   └── customer_credit_risk_new.sql
│
├── 📂 reports/
│   └── customer_credit_risk_profile.html
│
├── 📂 outputs/
│   └── final_dataset.csv
│
├── 📂 images/
│   ├── workflow.png
│   ├── data_profile.png
│   └── missing_values.png
│
├── 📄 requirements.txt
├── 📄 README.md
└── 📄 LICENSE
```

---

# ⚙️ Installation

## 1️⃣ Clone Repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

## 2️⃣ Navigate to Project

```bash
cd Holistic-Data-Preparer
```

## 3️⃣ Create Virtual Environment

### Windows

```bash
python -m venv venv
venv\Scripts\activate
```

### macOS / Linux

```bash
python3 -m venv venv
source venv/bin/activate
```

## 4️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

## 5️⃣ Start Jupyter Notebook

```bash
jupyter notebook
```

Then open:

```text
Holistic_Data_Preparer.ipynb
```

---

# ▶️ Usage

Follow this workflow inside the notebook:

### Step 1 — Import Libraries

```python
import pandas as pd
import numpy as np
```

### Step 2 — Load CSV

```python
transaction = pd.read_csv(
    "customer_credit_risk.csv"
)
```

### Step 3 — Load JSON

```python
customer = pd.read_json(
    "customer_metadata.json"
)
```

### Step 4 — Connect SQL Database

```python
import sqlite3

conn = sqlite3.connect(
    "customer_credit_risk.db"
)
```

### Step 5 — Read SQL Tables

```python
customer_master = pd.read_sql(
    "SELECT * FROM customer_master",
    conn
)

loan_repayment_history = pd.read_sql(
    "SELECT * FROM loan_repayment_history",
    conn
)
```

### Step 6 — Merge Data

```python
sql_data = customer_master.merge(
    loan_repayment_history,
    on="customer_id",
    how="left"
)

final_df = transaction.merge(
    customer,
    on="customer_id",
    how="left"
)

final_df = final_df.merge(
    sql_data,
    on="customer_id",
    how="left"
)
```

### Step 7 — Explore

```python
final_df.shape
final_df.info()
final_df.describe()
```

### Step 8 — Check Missing Values

```python
final_df.isnull().sum()
```

### Step 9 — Generate Profiling Report

Use YData Profiling to generate an automated data-quality report.

---

# 💻 Core Code

## Import Libraries

```python
import pandas as pd
import numpy as np

import matplotlib.pyplot as plt
import seaborn as sns

from sklearn.impute import (
    SimpleImputer,
    KNNImputer
)

from sklearn.experimental import (
    enable_iterative_imputer
)

from sklearn.impute import IterativeImputer

from sklearn.preprocessing import (
    StandardScaler,
    MinMaxScaler,
    MaxAbsScaler,
    RobustScaler,
    OneHotEncoder,
    OrdinalEncoder,
    LabelEncoder,
    FunctionTransformer,
    PowerTransformer
)

from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline

from scipy import stats
```

---

## 🔗 Merge Data

```python
sql_data = customer_master.merge(
    loan_repayment_history,
    on="customer_id",
    how="left"
)

final_df = transaction.merge(
    customer,
    on="customer_id",
    how="left"
)

final_df = final_df.merge(
    sql_data,
    on="customer_id",
    how="left"
)
```

---

## 🔎 Explore Dataset

```python
print("Shape:", final_df.shape)

print("\nDataset Information:")
final_df.info()

print("\nNumerical Summary:")
display(final_df.describe())

print("\nCategorical Summary:")
display(final_df.describe(include="object"))
```

---

## 🚨 Missing Value Analysis

```python
missing_values = final_df.isnull().sum()

missing_percentage = (
    final_df.isnull().mean() * 100
).round(2)

missing_report = pd.DataFrame({
    "Missing Values": missing_values,
    "Missing %": missing_percentage
})

missing_report = (
    missing_report[
        missing_report["Missing Values"] > 0
    ]
    .sort_values(
        "Missing Values",
        ascending=False
    )
)

display(missing_report)
```

---

# 📊 Project Results

The project successfully demonstrates a complete data-preparation workflow.

### Dataset Integration

```text
CSV
+
JSON
+
SQL
+
API
        ↓
Integrated Dataset
```

### Final Dataset

```text
Rows    : 1,040
Columns : 32
```

### Data Analysis

The project performs:

```text
✓ Numerical analysis
✓ Categorical analysis
✓ Missing-value analysis
✓ Dataset information
✓ Statistical summary
✓ Automated profiling
```

### Preprocessing Foundation

The project imports and prepares tools for:

```text
✓ Imputation
✓ Encoding
✓ Scaling
✓ Transformation
✓ ColumnTransformer
✓ Pipeline
```

---

# 🎓 Key Learnings

Through this project, the following concepts are demonstrated:

### Data Analysis

Understanding how raw data can be transformed into useful information.

### Data Acquisition

Working with multiple sources:

```text
CSV → JSON → SQL → API
```

### Data Integration

Combining datasets using a common identifier.

### Data Understanding

Understanding:

```text
Shape
Columns
Data Types
Statistics
Categories
Missing Values
```

### Data Quality

Identifying incomplete and inconsistent data.

### Data Profiling

Using automated profiling to understand dataset quality.

### Machine Learning Preparation

Understanding the preprocessing components required before model training.

---

# ⚠️ Limitations

The current project focuses primarily on **data acquisition, integration, understanding, profiling, and preprocessing preparation**.

The notebook does not currently demonstrate a complete trained Machine Learning model with validated performance metrics.

Also, the API section uses:

```text
https://example.com/api/economic-indicators
```

which is a placeholder endpoint rather than a verified production API.

---

# 🚀 Future Improvements

The project can be extended with:

* [ ] Complete missing-value treatment
* [ ] Duplicate detection and removal
* [ ] Outlier detection
* [ ] Data type standardization
* [ ] Date feature extraction
* [ ] Feature engineering
* [ ] Feature selection
* [ ] Correlation analysis
* [ ] Encoding pipeline
* [ ] Scaling pipeline
* [ ] Train/Test split
* [ ] Machine Learning model training
* [ ] Model comparison
* [ ] Hyperparameter tuning
* [ ] Cross-validation
* [ ] Model evaluation
* [ ] Explainable AI
* [ ] Model deployment
* [ ] Streamlit dashboard
* [ ] Automated ETL pipeline

---

# 🗺️ Roadmap

```text
Phase 1
Data Acquisition
      ✓
      ↓
Phase 2
Data Integration
      ✓
      ↓
Phase 3
Data Understanding
      ✓
      ↓
Phase 4
Data Quality & Profiling
      ✓
      ↓
Phase 5
Data Cleaning
      🔄
      ↓
Phase 6
Feature Engineering
      🔜
      ↓
Phase 7
Machine Learning
      🔜
      ↓
Phase 8
Model Deployment
      🔜
```

---

# 📌 Why This Project Matters

Real-world datasets are rarely perfectly structured.

A Machine Learning model is only as reliable as the data provided to it.

This project demonstrates the important principle:

```text
Good Data
   ↓
Good Features
   ↓
Better Model
   ↓
Better Decisions
```

The project therefore focuses on the **data preparation layer**, which is one of the most important stages of a complete Data Science / Machine Learning lifecycle.

---


# 📂 Recommended GitHub Repository

```text
📦 Holistic-Data-Preparer
│
├── 📓 Holistic_Data_Preparer.ipynb
│
├── 📊 data
│   ├── customer_credit_risk.csv
│   ├── customer_metadata.json
│   ├── customer_credit_risk.db
│   └── customer_credit_risk_new.sql
│
├── 📑 reports
│   └── customer_credit_risk_profile.html
│
├── 🖼️ images
│   ├── workflow.png
│   └── profiling_report.png
│
├── 📄 requirements.txt
├── 📄 README.md
└── 📄 LICENSE
```

---




---


# 👨‍💻 Author

## Jeel Prajapati




<p align="center">

### 🚀 Built with Python, Data Engineering & Machine Learning Concepts

**Holistic Data Preparer**

</p>

<p align="center">
⭐ <strong>Prepare Better Data. Build Better Models.</strong> ⭐
</p>
