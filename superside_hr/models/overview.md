{% docs __overview__ %}

# Superside HR Data Modeling Project

This project focuses on building a unified HR data model using [dbt](https://www.getdbt.com/) and [BigQuery](https://cloud.google.com/bigquery/docs/introduction). The goal is to integrate staff data from multiple sources into a single, consistent data model for Business Intelligence (BI) reporting.

`Project Overview`
Data Sources: Multiple HR datasets with different structures.
Data Modeling: Data was staged, transformed, and unified to create a comprehensive and accurate final model. This was done using dbt (data build tool), with transformations designed for flexibility and scalability.
Key Outputs: The final staff model, which allows Superside's HR and BI teams to generate insights from consistent, cleaned, and well-structured data.

## Tools Used
***dbt***: For managing transformations and data modeling.
***BigQuery***: As the data warehouse.
***OAuth Authentication*** : For secure access to BigQuery.

The steps include:

1. Data Ingestion: Consolidating staff-related data from various source systems into a centralized BigQuery dataset.
2. Staging Layer: Creating a staging layer where raw data is transformed into standardized formats using dbt models. This ensures consistency and uniformity across data from different sources.
3. Final Staff Model: Building a final staff model by integrating, deduplicating, and enhancing the staged data. The resulting model is optimized for downstream reporting and analytics.
4. Data Preparation for BI: Preparing the final data model to be easily consumed by BI tools for generating insights on HR metrics.

This approach leverages dbt for modular, scalable transformations and focuses on data accuracy and usability for business intelligence needs.
