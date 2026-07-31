# Polish IT Job Market Analysis

## About The Project
To combine my job search with my passion for data I decided to build this project and answer some questions about IT jobs market in Poland (and more). 

While the underlying database is relatively simple, it serves a very practical purpose: answering real-world questions I had about the current landscape of the Polish IT job market. By analyzing recent job postings, I wanted to discover which technologies are worth learning, how salaries differ based on the contract type, and where the most lucrative opportunities are located.

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

A significant portion of job postings did not list explicit skills. Among those that did, Java and JavaScript dominated the Polish IT sector followed by English, SQL, and Python.


What were the average salaries across different countries for B2B vs. Permanent employment contracts?

Note: The vast majority of job postings originated from Poland, with salary figures normalized in PLN currency.
The best paid position were listed for countries like Norway, Bulgaria and Finland
