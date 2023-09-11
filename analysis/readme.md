[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-14BB95.svg?logo=GitHub)](https://github.com/chanronnie/Olympics/tree/main)
[![View Data Folder](https://img.shields.io/badge/View-Data_Folder-EE8E1A.svg?logo=GitHub)](https://github.com/chanronnie/Olympics/tree/main/data)

# Data Analysis On Olympic Athletes (1896 - 2022)
![google-deepmind-4nBaO2Y4IzQ-unsplash](https://github.com/chanronnie/Olympics/assets/121308347/d3562af4-c1ed-424b-a526-254efb917446)

<br>

 I am conducting an exploratory data analysis on Olympic athletes from 1896 to 2022 using **PostgreSQL** and the datasets I created during my web scraping project (located in the [data folder](https://github.com/chanronnie/Olympics/tree/main/data)). Note that the obtained outputs will include data up to September 2023


My objective in conducting a data analysis is to **verify the accuracy of the data I previously gathered through web scraping**. By comparing my collected data with the information available on [Olympedia website](https://www.olympedia.org), I aim to ensure the reliability and consistency of the datasets I have created. To view the data validation of my web-scraped data, please click here [olympics_data_validation.pdf
](https://github.com/chanronnie/Olympics/blob/main/analysis/olympics_data_validation.pdf)

## Table Of Contents
* [About Data](#about-data)
* [Entity Relationship Diagram](#entity-relationship-diagram)
* [Technologies](#technologies)
* [File Contents](#file-contents)
* [Insights](#insights)

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


## Insights
- The very first Modern Olympic Games date back to the summer of 1896 and were hosted in the city of Athens, Greece, with only male athletes. Since 1896, a total of 53 Olympic Games have been held throughout history.
- Women athletes were permitted to participate in the Olympic Games for the first time in the second Modern Olympic Games, held in the summer of 1900, with a total of 24 female Olympians. The sports they played included golf, tennis, croquet, equestrian, and sailing.
- The ratio of male to female participants in all Olympic Games is 3:1, indicating that there have been three times more male athletes than female athletes in the Olympic Games.
- The athlete with the most gold medals in Olympic history is the American swimmer Michael Phelps, who has a total of 23 gold medals.
- The athlete with the most total medals is, once again, the American swimmer Michael Phelps, with a total of 28 medals. He is followed by the Russian gymnast Larisa Latynina, who has a total of 18 medals. The third athletes with the most medals are the Norwegian cross-country skier Marit Bjørgen (15 medals) and the Russian gymnast Nikolay Andrianov (15 medals).
- The country with the most medals is the United States, with a total of 2,975 medals. The second is Russia, which has earned 1,197 medals. The third is Germany, with 1,087 medals. The fourth is Great Britain, with 976 medals.
- Canada has won the most medals in athletics (64 medals), swimming, rowing, speed skating, and ice skating (in respective descending order).
