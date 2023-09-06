[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-14BB95.svg?logo=GitHub)](https://github.com/chanronnie/Olympics/tree/main)
[![View Data Folder](https://img.shields.io/badge/View-Data_Folder-EE8E1A.svg?logo=GitHub)](https://github.com/chanronnie/Olympics/tree/main/data)

# Data Analysis On Olympic Athletes (1896 - 2022)
![glossy-winter-olympics-running-emoji-with-medals-ice-skates-and-whistle-2](https://github.com/chanronnie/Olympics/assets/121308347/daa85ad7-ac22-4271-82e3-36fd750037a4)
<br>
Illustration by <a href="https://icons8.com/illustrations/author/zD2oqC8lLBBA">Icons 8</a> from <a href="https://icons8.com/illustrations">Ouch!</a>

<br>

 I am conducting an exploratory data analysis on Olympic athletes from 1896 to 2022 using **PostgreSQL** and the datasets I created during my web scraping project (located in the [data folder](https://github.com/chanronnie/Olympics/tree/main/data)). Note that the obtained outputs will include data up to September 2023


My objective in conducting a data analysis is to **verify the accuracy of the data I previously gathered through web scraping**. By comparing my collected data with the information available on [Olympedia website](https://www.olympedia.org), I aim to ensure the reliability and consistency of the datasets I have created. To view the data validation of my web-scraped data, please click here [olympics_data_validation.pdf
](https://github.com/chanronnie/Olympics/blob/main/analysis/olympics_data_validation.pdf)

## Table Of Contents
* [About Data](#about-data)
* [Entity Relationship Diagram](#entity-relationship-diagram)
* [Technologies](#technologies)
* [File Contents](#file-contents)

## About Data
The datasets that I am going to use are the datasets that I created using the data that I scraped from the [Olympedia website](https://www.olympedia.org).\
View data folder: **[here](https://github.com/chanronnie/Olympics/tree/main/data)**

## Entity Relationship Diagram
I used the [DB Diagram tool](https://dbdiagram.io/home) to create the following ERD.\
Note that I renamed the `athletes` dataset to `olympic_history` for my analysis.

![Olympics](https://github.com/chanronnie/Olympics/assets/121308347/05063af5-2187-48da-b5e2-1fd2453c23c9)


<details>
<summary>View code to create ERD</summary>
  
Here is the code that I used for creating the ERD for the `Olympics` datasets on DB Diagram tool.

```markdown
TABLE olympic_history
{
	id INTEGER
	name VARCHAR
	gender VARCHAR
	born VARCHAR
	died VARCHAR
	height VARCHAR
	weight VARCHAR
	team VARCHAR
	game VARCHAR
	noc VARCHAR
	sport VARCHAR
	event VARCHAR
	medal VARCHAR
}

TABLE athletes_roles
{
	id INTEGER
	name VARCHAR
	roles VARCHAR
}

TABLE host_cities
{
	year INTEGER
	season VARCHAR
	game VARCHAR
	host_city VARCHAR
}

TABLE noc_countries
{
	noc VARCHAR
	country VARCHAR
}

// Establish relationships between datasets
REF: olympic_history.id > athletes_roles.id
REF: olympic_history.game > host_cities.game
REF: olympic_history.noc > noc_countries.noc
```

</details>

## Technologies
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/jupyter-F07108.svg?style=for-the-badge&logo=jupyter&logoColor=white)

## File Contents
- View `olympics` database: **[olympics_schema.sql](https://github.com/chanronnie/Olympics/blob/main/analysis/olympics_schema.sql)**
- View my SQL analysis notebook: **[olympics_analysis.ipynb](https://github.com/chanronnie/Olympics/blob/main/analysis/olympics_analysis.ipynb)**
- View my data validation document: **[olympics_data_validation.pdf](https://github.com/chanronnie/Olympics/blob/main/analysis/olympics_data_validation.pdf)**
