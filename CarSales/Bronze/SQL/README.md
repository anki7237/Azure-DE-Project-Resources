# SQL Objects

This folder contains the SQL objects used in the Bronze layer for incremental data ingestion.

## 1. source_cars_data

**Type:** Table

**Purpose:**
- Acts as the landing (staging) table.
- Stores raw car sales data copied from GitHub by the `source_prep` Azure Data Factory pipeline.
- Serves as the source for the incremental loading process.

---

## 2. water_table

**Type:** Table

**Purpose:**
- Stores the Watermark Value (WATERVALUE).
- Tracks the last successfully processed record during incremental loading.
- Ensures that only new or updated records are processed in subsequent pipeline runs.

---

## 3. UpdateWATERTABLE

**Type:** Stored Procedure

**Purpose:**
- Updates the watermark value after a successful pipeline execution.
- Records the latest processed identifier or timestamp.
- Supports incremental data loading by maintaining the current processing state.

---

## Workflow

GitHub CSV Files
        │
        ▼
source_prep Pipeline
        │
        ▼
source_cars_data
        │
        ▼
incremental_prep Pipeline
        │
        ▼
UpdateWATERTABLE Stored Procedure
        │
        ▼
Updated water_table
