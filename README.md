
# 🏅 Tokyo Olympics Data Engineering Pipeline 🏅
This repository contains the full data engineering workflow, from raw data ingestion and cleaning (ETL/ELT) to data modeling and storage, using Azure Data Services (Databricks, Synapse) and GitHub for version control. The final structured data is ready for downstream analytics (e.g., in Power BI or Tableau) to analyze medal counts, athlete performance, and gender participation trends.

## ⚙️ Project Architecture & Technologies
The solution implements a scalable and repeatable data pipeline hosted primarily on Azure.

###Technologies Used
Cloud Platform: Azure (Storage, Data Factory/Synapse)

Compute/Transformation: Azure Databricks (PySpark/Spark SQL)

Version Control: GitHub

Programming Language: Python (PySpark)

Data Storage: Azure Data Lake Storage (ADLS Gen2)

### High-Level Flow
Ingestion: Raw data is uploaded to Azure Data Lake Storage (ADLS Gen2).

Transformation (ETL/ELT): Azure Databricks notebooks read the raw data from ADLS, perform cleaning, normalization, and feature engineering.

Modeling/Storage: Cleaned data is saved back to ADLS in optimized Delta format, serving as the final Data Model (Lakehouse) for consumption.

## 🛠️ Data Sources & Pipeline Steps
###Data Sources
The project utilizes the following datasets (originally sourced from public data/Kaggle, etc.):

athlete.csv: Details on individual athletes.

entriesGender.csv: Gender breakdown per discipline/country.

coaches.csv: Coach information.

medals.csv: Final medal tally per country.

### Databricks Transformation Steps
The core data processing logic is implemented in the primary notebook: analysis/Tokyo Olympic Transformation.ipynb.

Mounting: Securely mounts the Azure Data Lake Storage (ADLS Gen2) container using OAuth (or service principal) for read/write access.

Data Loading: Loads all raw CSV files into Spark DataFrames.

Cleaning & Normalization:

Handles null/missing values (e.g., for Total entries).

Casts columns to appropriate data types.

Renames columns to eliminate ambiguity (e.g., renaming duplicated 'Country' columns).

Feature Engineering: Creates derived metrics, such as a consolidated "Gender Participation" table for comparative analysis.

Saving: Writes the final, cleaned DataFrames back to ADLS in Delta format for optimized querying.

## ▶️ How to Run This Project
To run and reproduce this pipeline, you need an Azure Databricks workspace linked to a GitHub account.

Clone the Repo: In your Databricks workspace, clone this repository URL: https://github.com/Nikun2311/Tokyo-Olympic-data into the Repos section.

Azure Setup: Ensure your Databricks cluster has access to your Azure Data Lake Storage (ADLS Gen2) containing the raw data. The notebook uses an Azure AD/OAuth method for mounting the storage.

Run Notebook: Open the analysis/Tokyo Olympic Transformation.ipynb notebook.

Execute Cells: Run all cells sequentially. The final output is the set of clean, Delta-formatted tables written back to your ADLS container.

## 📈 Final Data Model (Consumption Layer)
The final data is modeled into clean tables (saved in Delta format) ready for analysis, which can be easily queried from Azure Synapse or directly from Databricks SQL.

Table Name	Description	Key Fields
athlete_clean	Cleaned and standardized athlete details.	PersonName, Country, Discipline
medals_clean	Final medal count with proper typing.	Rank, Team/Country, Total
gender_participation	Derived table for comparing Male/Female entries.	Discipline, Avg_Female, Avg_Male


