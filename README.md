# Photovoltaic Energy Utilization and Curtailment Analysis in a Hybrid Solar-Diesel System

## Project Overview

This capstone project analyzes the operational behavior of the El Sena hybrid solar-diesel energy system located in Pando, Bolivia. Using real operational and environmental data collected between October 2018 and September 2019, the project explores how solar radiation, electrical demand, diesel generation, and operational constraints affect photovoltaic (PV) energy utilization.

The analysis focuses on identifying photovoltaic curtailment patterns, evaluating diesel dependence, and exploring opportunities to improve renewable energy integration within isolated hybrid power systems.

This project was completed as part of the Google Data Analytics Professional Certificate offered through Coursera.

---

## Business Problem

Hybrid solar-diesel systems are commonly used in isolated regions to ensure energy access. However, operational and system constraints often prevent full utilization of available solar energy.

This project investigates:
- How much photovoltaic energy is actually utilized vs. wasted
- How operational behavior affects renewable integration
- Why diesel generation remains high despite solar availability

---

## Objectives

The main objectives of this project were to:

- Analyze photovoltaic energy utilization patterns
- Identify periods of solar energy curtailment
- Evaluate diesel generation dependence
- Explore relationships between solar radiation, electrical demand, and PV injection
- Generate operational insights that may support future renewable energy optimization strategies

---

## Dataset Information

The dataset contains operational records from the El Sena Solar Photovoltaic Plant, a hybrid solar-diesel energy system located in Pando, Bolivia.

### Dataset Characteristics

- Period analyzed: October 2018 – September 2019
- Data frequency: 15-minute intervals
- Total records: 1,152 operational records
- Source: Real operational system data obtained through academic collaboration

### Main Variables

- Electrical demand (kW)
- Diesel generation (kW)
- Solar radiation
- Theoretical photovoltaic generation
- Actual photovoltaic injection
- Unused photovoltaic energy

---

## Tools Used

- Microsoft Excel — data consolidation and cleaning
- Google BigQuery — SQL analysis and cloud-based querying
- Tableau — data visualization and dashboard creation

---

## Data Cleaning and Preparation

The original dataset was provided as 12 separate monthly operational tables. During the preparation phase:

- All tables were consolidated into a single dataset
- Column names and formats were standardized
- Time formats were cleaned and validated
- Missing values and inconsistencies were reviewed
- Data was exported to CSV format and imported into Google BigQuery
- SQL validation queries were used to verify data integrity

---

## Analysis Performed

The project included:

### Exploratory Data Analysis
- Descriptive statistics
- Data validation
- Integrity verification

### Hourly Operational Analysis
- Electrical demand behavior
- Diesel generation patterns
- Solar radiation trends
- Actual PV injection analysis
- Unused PV energy analysis

### Monthly Operational Analysis
- Monthly PV injection trends
- Monthly diesel dependence
- Monthly unused PV energy
- Monthly solar radiation variations

### Performance Indicators
- Photovoltaic utilization ratio
- Photovoltaic curtailment ratio
- Comparative PV energy analysis

---

## Key Findings

The analysis revealed several important operational patterns:

- Significant solar radiation was available during daytime operation
- Actual photovoltaic injection remained substantially lower than theoretical PV generation potential
- Approximately **73.2%** of theoretical photovoltaic generation remained unused
- Only **26.8%** of available photovoltaic generation was effectively injected into the system
- Diesel generation remained consistently high throughout most operational periods
- Peak electrical demand occurred during evening hours when solar generation was unavailable
- Extremely low PV injection was observed during November and December 2018 despite normal solar radiation conditions

These findings suggest the presence of operational constraints limiting renewable energy integration within the hybrid system.

---

## Business Impact

This analysis highlights inefficiencies in hybrid energy systems where available renewable energy is not fully utilized.

The findings can support:

- Improved coordination between diesel and photovoltaic generation  
- Optimization of dispatch strategies in hybrid systems  
- Evaluation of energy storage solutions (e.g., batteries)  
- Reduction of fossil fuel dependency in isolated grids  
- Better planning for renewable energy integration in rural regions  

---

## Visualizations

The project includes Tableau visualizations focused on:

- Solar radiation vs actual PV injection
- Unused PV energy trends
- Monthly photovoltaic utilization
- Diesel generation dependence
- Electrical demand behavior
- Photovoltaic curtailment patterns

Example visualizations are included in the `/visuals` folder.

---
## Interactive Dashboard

View the interactive Tableau dashboard here:

[Photovoltaic Curtailment Dashboard](https://public.tableau.com/views/el_sena_share_phase_dashboard/Dashboard1?:language=es-ES&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---
## Kaggle Notebook

Interactive project notebook available on Kaggle:

[Kaggle Notebook](https://www.kaggle.com/code/bernardonuez/photovoltaic-curtailment-analysis)

---
## Recommendations

Based on the analysis, several potential opportunities were identified:

- Improve coordination between diesel and photovoltaic generation
- Review operational dispatch strategies
- Evaluate photovoltaic integration limitations
- Explore future battery energy storage solutions
- Expand operational monitoring and analytical evaluation

The project also highlights how data analytics can support operational optimization and renewable energy planning in isolated hybrid systems.

---

## Project Structure

```text
solar-energy-capstone/
│
├── dataset/
│   └── operational_data.csv
│
├── documentation/
│   └── capstone_project.pdf
│
├── sql/
│   └── analytical_queries.sql
│
├── visuals/
│   ├── tableau_workbook.twb
│   └── charts_and_dashboards/
│
└── README.md