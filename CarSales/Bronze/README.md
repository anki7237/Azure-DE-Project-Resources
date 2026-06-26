# Bronze Layer - Raw Data Ingestion

## Objective

The Bronze layer is responsible for ingesting raw sales data from GitHub into Azure SQL Database using Azure Data Factory. 
The data is loaded into landing tables and then moved to Bronze tables using an incremental loading process implemented through a SQL stored procedure.

## Workflow

GitHub (CSV Files)
        ↓
Azure Data Factory (Copy Activity)
        ↓
Landing Tables (Azure SQL Database)
        ↓
Stored Procedure (Incremental Load)
        ↓
Bronze Tables

## Technologies Used

- Azure Data Factory
- Azure SQL Database
- GitHub
- SQL Stored Procedures

## Features

- Automated data ingestion from GitHub
- Incremental data loading
- Duplicate prevention
- Re-runnable pipeline
