# SQL Data Warehouse Project


## Overview

This project demonstrates the implementation of a scalable, modular, and business-friendly **Data Warehouse architecture** using SQL Server. The architecture follows the **Bronze → Silver → Gold** layered model to ensure a clean, standardized, and analytics-ready data pipeline for reporting, ad-hoc querying, and machine learning.
![image](https://github.com/user-attachments/assets/9d6b93e9-2966-4ec4-96f6-82c6c0fbfe30)


---

## 🧱 Architecture Summary

### 📂 Data Sources: [Click here](https://github.com/BI-with-Sabbir/SQL-Data-Warehouse-Project/tree/main/Datasets)

* **Types:** CSV files
* **Origin:** CRM and ERP systems
* **Interface:** Files in folders (ingested via SSIS or Python scripts)

---
![Untitled Diagram drawio](https://github.com/user-attachments/assets/865ed4ce-3747-4c8e-b9d2-3e9328b8f36f)


## 🔶 Bronze Layer – Raw Data (details)[https://github.com/BI-with-Sabbir/SQL-Data-Warehouse-Project/tree/main/Scripts/bronze%20layer]

The Bronze Layer is responsible for loading the raw data from source systems without any transformation.

* **Object Type:** Tables
* **Load Techniques:**

  * Batch Processing
  * Full Load
  * Truncate & Insert
* **Transformations:** None
* **Data Model:** None (as-is)
* **Purpose:** Retain raw data for traceability and rollback

---

## ⚪ Silver Layer – Cleaned & Standardized Data

This layer performs essential cleaning and standardization to prepare the data for analysis.

* **Object Type:** Tables
* **Load Techniques:**

  * Batch Processing
  * Full Load
  * Truncate & Insert
* **Transformations:**

  * Data Cleansing (nulls, formatting)
  * Data Standardization (units, naming)
  * Data Normalization
  * Derived/Calculated Columns
  * Enrichment (e.g., external mappings)
* **Data Model:** None (still normalized and flexible)
* **Purpose:** Create structured and clean data for analytical modeling

---

## 🟡 Gold Layer – Business-Ready Data

The Gold Layer generates final views ready for business use, aggregations, and decision-making.

* **Object Type:** Views
* **Load:** No data loading; virtual layer
* **Transformations:**

  * Data Integrations (from multiple Silver tables)
  * Aggregations (totals, KPIs)
  * Business Logic (filters, classifications)
* **Data Model:**

  * Star Schema
  * Flat Tables
  * Aggregated Tables
* **Purpose:** Direct consumption for BI tools, ML models, and decision systems

---

## 🎯 Data Consumption

Final outputs from the Gold Layer are consumed by:

* 📊 **Power BI / Tableau** for dynamic dashboards
* 🔍 **Ad-hoc SQL Queries** for quick insights
* 🤖 **Machine Learning Models** for predictive analytics

---

## ⚙️ Project Files Structure

```
sql-data-warehouse/
├── scripts/
│   ├── bronze_load.sql
│   ├── silver_transform.sql
│   └── gold_views.sql
├── diagrams/
│   └── architecture.png
├── docs/
│   └── data_dictionary.md
└── README.md
```

---

## 🧠 Tools & Technologies

* **SQL Server** (for ETL & Storage)
* **Stored Procedures** (for automation)
* **Power BI / Tableau** (for reporting)
* **CSV Files** (for raw data ingestion)

---

## 📌 Benefits

* ✅ Clear separation of concerns (Raw → Clean → Ready)
* ✅ Auditability and traceability of data lineage
* ✅ Scalability for multiple source systems
* ✅ Reusable and modular SQL logic

---

## 📎 Future Enhancements

* Add **SSIS or Azure Data Factory** for orchestration
* Automate **data refresh** schedules
* Integrate **CI/CD** pipelines for version control
* Add **unit tests** for transformations

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). Feel free to fork and use it.
