# Spotify Data Analysis

This small project is about analysing Spotify Chart data to find a few insights on the Artists and Songs in the top 200 Daily Charts.

I created a PostgreSQL database in pgAdmin 4, and connected my table and queries to a Jupiter Notebook file written in python to complete this project.

Files included are:
- spotify_daily_chart.csv -> The data used in my analysis
- create_table.sql -> The SQL table made in PostgreSQL derived from the csv file
- queries.sql -> The SQL queries I came up with when considering the data
- data_analysis.ipynb -> The Jupiter Notebook file used to provide a visual from our data

To run the data analysis file, simply run all cells simultaneously. To see only a single cells query, ensure that you run the first cell containing the imports and database connection.

Do Note - This project connects to a local PostgreSQL instance. To properly use it:
1. Set up PostgreSQL on your machine
2. Run the create_table.sql file
3. Import the spotify_tracks.csv data
4. Add your connection string to a .env file:
