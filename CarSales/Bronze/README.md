# Bronze Layer

## Objective

Load raw sales data from GitHub into Azure SQL Database and populate the Bronze layer using an incremental loading strategy.

## Pipeline Flow

1. Source: GitHub CSV files
2. Azure Data Factory Copy Activity loads data into Azure SQL landing tables.
3. A stored procedure executes after the copy activity.
4. The stored procedure inserts only new records into the Bronze tables.
5. The pipeline completes successfully and is ready for the Silver layer.

## Components

- Linked Service (GitHub/HTTP)
- Linked Service (Azure SQL Database)
- Source Dataset
- Sink Dataset
- Copy Activity
- Stored Procedure Activity

## Outcome

- Raw data successfully ingested.
- Incremental loading implemented.
- Duplicate records avoided.
- Bronze layer populated for downstream transformations.
