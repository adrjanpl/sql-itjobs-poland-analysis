# Polish IT Job Market Analysis

## About The Project
To combine my job search with my passion for data I decided to build this project and answer some questions about IT jobs market in Poland (and more). 

While the underlying database is pretty simple, it serves a practical purpose of answering real-world questions I had about the current landscape of the Polish IT job market. By analyzing recent job postings I wanted to discover which technologies are worth learning, how salaries differ based on the contract type, or where the most lucrative opportunities are located.

## Built With
* **Database:** PostgreSQL
* **Data Processing:** Python (Pandas, SQLAlchemy)
* **Data Visualization:** Matplotlib, Seaborn

## Project Workflow
1. Data Cleaning & Preprocessing: The raw dataset was imported into Python for initial data wrangling in `dataprocess.ipynb` file. Missing values were evaluated and significant rows/columns essential for downstream analysis were dropped. Unnecessary features were removed. For salary-related columns, missing values were filled with `0` and data types were cast to `int`.
2. Distribution & Outlier Analysis: Key variables were analyzed for their statistical distributions. Using quantile-based filtering, the top 10 salary outliers were identified and examined.
3. Export for Database Integration: The cleaned dataset was saved as a `csv` file, making it ready for ingestion into a PostgreSQL database.
4. SQL Analytics: The `sqlitjobs.sql` file contains analytical SQL queries designed to extract insights and answer business questions regarding the Polish IT job market.
5. Python-SQL Integration & Data Visualization: In the `pythonitjobs.ipynb` notebook, an engine was established using sqlalchemy to bridge the PostgreSQL database with Python, enabling automated query execution and data visualization.


## Key Insights
What were the most required skills in IT job postings?

* <img width="2703" height="1589" alt="skille" src="https://github.com/user-attachments/assets/11f2d8da-7cc9-408b-8170-4ec4da16a9bc" />

A significant portion of job postings did not list explicit skills. Among those that did, Java and JavaScript dominated the Polish IT sector followed by English, SQL, and Python.

What countries are the job listings from (Limited to top 5)?

| country_code   |   total_offers |
|:---------------|---------------:|
| PL             |          35940 |
| US             |            308 |
| DE             |            223 |
| GB             |            180 |
| NL             |             74 |

As we can see most of them are from Poland.

What were the average salaries across different countries for B2B vs Permanent employment contracts?

* <img width="3080" height="1699" alt="salaries_by_country" src="https://github.com/user-attachments/assets/39df2c3a-0c7f-4eb6-8a14-1588d034436d" />

The best paid position were listed for countries like Norway, Bulgaria and Finland

What is the count of remote jobs for every Experience level?

| experience_level   |   remote_jobs_count |
|:-------------------|--------------------:|
| mid                |               12872 |
| senior             |                9309 |
| junior             |                2019 |

With this conclusion we can determine that being Mid in experience level gives you the most remote jobs.

What's the average b2b salary for Remote vs In person/mix employment in PLN currency?

| work_model       |   avg_b2b_pln |   offer_count |
|:-----------------|--------------:|--------------:|
| in person or mix |         16113 |          3915 |
| remote           |         19142 |         14712 |


## Dataset
The data for this analysis was sourced from the Polish IT Job Board Data from 2022 dataset on Kaggle [Polish IT Job Board Data from 2022](https://www.kaggle.com/datasets/kriegsmaschine/polish-it-job-board-data-from-2022)
Author: Kriegsmaschine

