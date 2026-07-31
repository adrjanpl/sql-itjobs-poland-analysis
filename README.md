# Polish IT Job Market Analysis

## About The Project
To combine my job search with my passion for data I decided to build this project and answer some questions about IT jobs market in Poland (and more). 

While the underlying database is relatively simple, it serves a very practical purpose: answering real-world questions I had about the current landscape of the Polish IT job market. By analyzing recent job postings, I wanted to discover which technologies are worth learning, how salaries differ based on the contract type, and where the most lucrative opportunities are located.

## Built With
* **Database:** PostgreSQL
* **Data Processing:** Python (Pandas, SQLAlchemy)
* **Data Visualization:** Matplotlib, Seaborn

## Project Workflow
1. Na początku wgrałem dane do Pythona i zająłem się obróbką danych. Sprawdziłem czy są braki w danych i usunąłem te które były znaczące dla mojej dalszej analizy. Pozbyłem się także zmiennej informującej o zatrudnieniu Ukraińców. Dla zmiennych z zarobkami dla brakujących danych uzupełniłem `0` i zmieniłem typ kolumny na `int`.
2. Sprawdzone zostały rozkłady ważnych dla analizy zmiennych i za pomocą kwantyli wyświetlono top 10 outliersów, czyli ofert pracy z dużymi zarobkami.
3. W pliku `cos.sql` można znaleźć kody, które pomogły mi odpowiedzieć na pytania dotyczące tego zbioru danych.
4. Za pomocą biblioteki `sqlalchemy` stworzono engine, który pomógł mi połączyć bazę danych SQL z pythonem i stworzyć do niektórych zapytań wykresy.

## Repository Structure
* `dataset/` - Contains the raw CSV data.
* `sqlitjobs.sql` - All the SQL scripts used to create the table and analyze the data.
* `pythonitjobs.ipynb` - The Jupyter Notebook containing the database connection and visualization code.
* `images/` - Folder containing the exported charts.
