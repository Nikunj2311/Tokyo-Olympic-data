# 🏅 Tokyo Olympics Data Engineering Pipeline

A scalable end-to-end Data Engineering pipeline built on Azure to process, transform, and model Tokyo Olympics datasets for downstream analytics and reporting.

This project demonstrates the complete lifecycle of a modern data pipeline — from raw data ingestion and distributed transformation using PySpark to analytics-ready storage using Delta Lake architecture.

The final curated datasets can be consumed by BI and analytics platforms such as Power BI, Tableau, Azure Synapse, or Databricks SQL for advanced reporting and visualization.

---

## 📌 Project Overview

The objective of this project is to design and implement a cloud-based data engineering workflow capable of:

- Ingesting raw Olympic datasets into Azure Data Lake Storage
- Performing scalable ETL/ELT transformations using PySpark
- Cleaning and standardizing inconsistent datasets
- Building analytics-ready Delta tables
- Supporting downstream reporting and business intelligence workloads

---

## 🏗️ Solution Architecture

<img width="1000" height="493" alt="Architecture Diagram" src="https://github.com/user-attachments/assets/9e0fad2f-afe5-428a-8617-ee7d23031009" />

---

## ⚙️ Tech Stack

| Category | Technologies |
|---|---|
| Cloud Platform | Azure |
| Data Storage | Azure Data Lake Storage Gen2 (ADLS Gen2) |
| Compute Engine | Azure Databricks |
| Processing Framework | PySpark / Spark SQL |
| Data Format | Delta Lake |
| Programming Language | Python |
| Version Control | Git & GitHub |
| Analytics Consumption | Power BI / Tableau / Databricks SQL |

---

## 🔄 Pipeline Workflow

### 1️⃣ Data Ingestion
Raw CSV datasets are uploaded into Azure Data Lake Storage (ADLS Gen2).

### 2️⃣ Data Transformation (ETL/ELT)
Azure Databricks notebooks process the raw files using distributed PySpark transformations.

Transformation tasks include:
- Data cleaning
- Schema standardization
- Null handling
- Data type conversion
- Column normalization
- Feature engineering

### 3️⃣ Data Modeling
The transformed datasets are stored in Delta format to create an analytics-ready Lakehouse layer.

### 4️⃣ Analytics Consumption
The final Delta tables can be queried directly using:
- Azure Synapse Analytics
- Databricks SQL
- Power BI
- Tableau

---

## 📂 Project Structure

```bash
Tokyo-Olympic-data/
│
├── Raw data/
│   ├── athlete.csv
│   ├── coaches.csv
│   ├── entriesGender.csv
│   └── medals.csv
│
├── transmitted data/
│
├── analysis/
│   ├── Tokyo Olympic Transformation.ipynb
│   └── analysis.sql
│
└── README.md
```

---

## 📊 Dataset Information

The project uses publicly available Tokyo Olympics datasets.

| Dataset | Description |
|---|---|
| athlete.csv | Athlete information and discipline details |
| coaches.csv | Coach information by country and discipline |
| entriesGender.csv | Male/Female participation statistics |
| medals.csv | Country-wise medal tally |

---

## 🛠️ Key Engineering Features

- Built a scalable cloud-based ETL pipeline using Azure services
- Performed distributed data processing using PySpark
- Implemented modular transformation workflows
- Used Delta Lake format for optimized querying and storage
- Designed analytics-ready consumption tables
- Structured data pipeline following modern Lakehouse principles

---

## 🔍 Data Transformation Steps

The transformation logic is implemented in:

```bash
analysis/Tokyo Olympic Transformation.ipynb
```

### Core Processing Steps

#### ✅ Storage Mounting
Mounted Azure Data Lake Storage securely inside Databricks using authentication mechanisms.

#### ✅ Data Loading
Loaded raw CSV files into Spark DataFrames.

#### ✅ Data Cleaning
Performed:
- Null value handling
- Duplicate removal
- Data standardization
- Invalid record filtering

#### ✅ Schema Normalization
- Converted columns into proper data types
- Renamed ambiguous columns
- Standardized dataset structures

#### ✅ Feature Engineering
Created derived datasets and aggregated metrics for analytics.

#### ✅ Delta Storage
Stored transformed datasets in Delta format for:
- Better query performance
- Scalability
- ACID transaction support

---

## 📈 Final Data Model

The pipeline produces analytics-ready Delta tables.

| Table Name | Description | Key Fields |
|---|---|---|
| athlete_clean | Standardized athlete dataset | PersonName, Country, Discipline |
| medals_clean | Final medal tally dataset | Rank, Country, Total |
| gender_participation | Gender participation comparison metrics | Discipline, Avg_Male, Avg_Female |

---

## 📊 Business Insights Enabled

The transformed datasets support:

- Country-wise medal analysis
- Athlete participation analysis
- Gender participation comparison
- Discipline-wise performance tracking
- Olympic trend reporting
- BI dashboard development

---

## ⚡ Engineering Challenges Solved

- Managed inconsistent schemas across multiple datasets
- Standardized naming conventions for countries and disciplines
- Handled missing/null values during ingestion
- Optimized transformed datasets using Delta Lake storage
- Built reusable transformation workflows using PySpark

---

## ▶️ How to Run the Project

### Prerequisites

- Azure Subscription
- Azure Data Lake Storage Gen2
- Azure Databricks Workspace
- GitHub Account
- Databricks Cluster

---

### Setup Steps

#### 1️⃣ Clone Repository

```bash
git clone https://github.com/Nikunj2311/Tokyo-Olympic-data.git
```

#### 2️⃣ Upload Raw Data
Upload all CSV datasets into your ADLS Gen2 container.

#### 3️⃣ Configure Databricks
- Create a Databricks cluster
- Configure ADLS access credentials
- Mount storage container

#### 4️⃣ Run Notebook

Open:

```bash
analysis/Tokyo Olympic Transformation.ipynb
```

Run all notebook cells sequentially.

#### 5️⃣ Query Final Tables
The transformed Delta tables can now be queried using:
- Databricks SQL
- Synapse Analytics
- Power BI
- Tableau

---

## 🚀 Future Improvements

- Automate orchestration using Azure Data Factory
- Implement incremental data loading
- Add CI/CD pipeline integration
- Integrate real-time streaming ingestion
- Build interactive Power BI dashboards
- Add data quality validation framework

---

## 📌 Key Learnings

This project helped strengthen understanding of:

- Cloud-based Data Engineering workflows
- Distributed data processing with PySpark
- Azure Lakehouse architecture
- ETL/ELT pipeline development
- Delta Lake optimization
- Analytics-ready data modeling

---

## 👨‍💻 Author

### Nikunj Bansal

Aspiring Data Engineer focused on building scalable cloud-based data pipelines and analytics systems.

- GitHub: https://github.com/Nikunj2311
- LinkedIn: https://www.linkedin.com/in/nikunj-bansal-166555347/

---

## ⭐ Repository Link

```bash
https://github.com/Nikunj2311/Tokyo-Olympic-data
```
