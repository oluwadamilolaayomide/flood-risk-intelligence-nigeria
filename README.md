# Nigeria Flood Risk Intelligence: SQL & Power BI Analysis (2018–2025)

![Dashboard Preview](Images/dashboard_preview.png)

## Overview

Flood-related disasters continue to affect communities across Nigeria through fatalities, population displacement and economic losses. Timely analysis of flood incidents can help emergency agencies identify high-risk locations, understand changing trends and allocate resources more effectively.

This project analyses flood incidents recorded between **2018 and 2025** across **15 Nigerian states**. SQL was used for database setup, data cleaning and exploratory analysis before developing an interactive Power BI dashboard to monitor flood trends, assess regional risk and explore factors associated with severe flood events.

## Project Links

- [Interactive Dashboard](https://app.powerbi.com/view?r=eyJrIjoiNTc2YWEzZWYtYmFhZS00OTcwLThmNDEtZjlkMjQwNTQ2ODgxIiwidCI6ImI5YmM1OTJjLWQ0MDMtNDJhMi1hNDIxLWY0ZmNkN2Q5MjljYyJ9)

---

## Business Problem

Emergency management teams require timely insights to answer questions such as:

- Which states experience the greatest flood impact?
- Which regions account for the highest economic losses?
- How have flood incidents changed over time?
- Which year recorded the highest fatalities?
- Which environmental factors are associated with severe flooding?
- Does emergency response time appear related to higher fatalities?
- Which locations should be prioritised for flood mitigation?

---

## Analytics Workflow

### Data Preparation

The dataset was prepared in SQL by:

- Assessing data quality
- Handling missing values
- Removing duplicate records
- Validating data types

### Exploratory Analysis

SQL queries were developed to analyse:

- Annual flood activity
- State-level flood impact
- Regional economic losses
- Climate risk trends
- Flood severity distribution
- Emergency response performance

### Data Transformation

The prepared dataset was imported into Power BI, where Power Query was used to perform additional transformations before building the data model.

### Business Analytics

DAX measures were created to calculate:

- Total Flood Incidents
- Total Fatalities
- Total Population Displaced
- Total Economic Loss
- Peak Fatality Year
- Average Climate Risk
- High Severity Rate
- Average Response Time
- Average Fatalities per Event

---

## Dashboard Walkthrough

### Executive Overview

![Executive Overview](Images/executive_overview.png)

Provides an executive summary of flood activity across Nigeria through KPIs, regional comparisons and geographic analysis.

---

### Trend Analysis

![Trend Analysis](Images/trend_analysis.png)

Examines changes in flood activity between 2018 and 2025, highlighting trends in fatalities, economic loss, climate risk and flood severity.

---

### Severity Drivers & Emergency Response

[Severity Drivers & Emergency Response](Images/severity_drivers.png)

Explores factors associated with severe flood events, including emergency response time, rainfall patterns and environmental conditions.

---

## Key Findings

- Flood fatalities were concentrated in a small number of states, indicating priority areas for intervention.
- Economic losses varied considerably across regions, suggesting uneven flood exposure.
- Moderate and high-severity floods accounted for most recorded incidents.
- Regions with longer emergency response times generally recorded higher fatality levels.
- Poor drainage conditions and waste blockage appeared alongside areas experiencing greater flood severity.
- Climate risk remained consistently higher across several regions throughout the analysis period.

---

## Recommendations

- Prioritise flood mitigation initiatives in states with consistently high fatalities.
- Improve emergency response capacity in regions with longer response times.
- Increase investment in drainage maintenance within flood-prone communities.
- Expand early warning systems in areas with persistent climate risk.
- Use regional risk indicators to support disaster management planning and resource allocation.

---

## Project Limitations

- The analysis covers 15 Nigerian states rather than all 36 states and the FCT.
- Findings depend on the completeness and quality of the available dataset.
- Economic loss values reflect the reported values contained in the dataset.

---

## Tools

- **SQL:** Database management and querying
- **Power BI:** Data visualisation
- **Power Query:** Data transformation
- **DAX:** Business calculations
- **Microsoft Excel:** Data analysis

---

## Repository Structure

```text
Nigeria-Flood-Risk-Intelligence/
│
├── Dashboard/
│   └── Nigeria_Flood_Risk_Intelligence_Dashboard.pbix
│
├── Data/
│   └── raw_flood_data.csv
│
├── SQL/
│   ├── 01_database_setup.sql
│   ├── 02_data_cleaning.sql
│   └── 03_exploratory_analysis.sql
│
├── Images/
│   ├── dashboard_preview.png
│   ├── executive_overview.png
│   ├── trend_analysis.png
│   └── severity_drivers.png
│
├── README.md
└── LICENSE
```

---

## Collaboration

This project was completed by **Team DTV**.

As the project lead, I coordinated the analytical workflow and contributed to the SQL analysis, dashboard development and business insight generation while collaborating with the team throughout the project.
