# 🔄 Power Query Transformations

This document describes the data preparation and transformation steps performed in Power Query before creating the HR Analytics Dashboard.

---

# Data Source

- IBM HR Analytics Employee Attrition Dataset
- Source: Kaggle
- File Format: CSV

---

# Data Cleaning Steps

## 1. Imported Dataset
- Loaded the original HR Analytics dataset into Power BI using Power Query.

## 2. Verified Data Types
- Checked and assigned the correct data types for all columns.
- Numeric columns were converted to Whole Number or Decimal Number where required.
- Date and text columns were verified.

## 3. Checked Missing Values
- Inspected the dataset for missing or null values.
- Confirmed that the dataset contained no critical missing values affecting the analysis.

## 4. Checked Duplicate Records
- Verified that duplicate employee records were not present.

## 5. Renamed Columns
- Renamed columns where necessary for better readability and consistency.

## 6. Data Validation
- Verified employee count and attribute values before loading the dataset into the data model.

## 7. Loaded Clean Dataset
- Loaded the cleaned dataset into Power BI for DAX calculations and dashboard development.

---

# Additional Transformations

The following calculated columns were created in Power BI using DAX after loading the data:

- Age Group
- Income Group
- Job Satisfaction Level
- Years Group

---

# Output

The cleaned dataset was used to create:

- KPI Cards
- Interactive Charts
- Navigation Buttons
- Dashboard Filters
- Executive Dashboard
- Detailed Analysis Page
- Information Page
