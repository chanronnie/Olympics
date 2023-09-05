# Olympics Athletes Web Scraping Project (1896 - 2022)
<p align="center">
<img src = "https://github.com/chanronnie/Olympics/blob/main/image/olympics.jpg" width="500">
</p>

This repository contains all the files for my web scraping project. 
My goal is to retrieve biographical data and game results for all Olympic athletes from 1896 to 2022 for both Summer and Winter games. 
To speed up my data scraping process, I am using the `threading concurrency` method, which allows me to handle and execute multiple tasks simultaneously by using the `concurrent.futures` library


## Table of Contents
* [About Data](#about-data)
* [Main Challenge](#main-challenge)
* [Concept](#concept)
* [Technologies](#technologies)
* [File Contents](#file-contents)
* [Datasets](#datasets)
* [Growth and Next Steps](#growth-and-next-steps)


## About Data
The data for this project is scraped from the [Olympedia.org](https://www.olympedia.org) website. The data retrieval process involves several steps:

1. Gathering the URLs of all **countries** that participated in the Olympics.
2. Collecting the URLs of all **games** in which each country participated (games are referred to as "editions" on the Olympedia website).
3. Obtaining the URLs of all **athletes** who participated in those games.
   
This sequential process allows us to systematically gather the biographical data and game results of Olympic athletes from 1896 to 2022 for both Summer and Winter games.


## Main Challenge
My primary challenge in this project is the sheer volume of URLs that need to be requested. I have a total of `155,600 URLs` to fetch, which can be a time-consuming process if not optimized for speed and efficiency.


## Concept
To efficiently address the challenge of fetching a large number of URLs, I've implemented threading concurrency. This method leverages Python's **`concurrent.futures`** library to create a pool of worker threads. These threads handle multiple HTTP requests simultaneously, running in parallel. This approach minimizes wait times for individual requests, optimizing system resource utilization and significantly speeding up the data retrieval process.


## Technologies
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) 
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white) 
![BeautifulSoup](https://img.shields.io/badge/BeautifulSoup-grey?style=for-the-badge)
![concurrent.futures](https://img.shields.io/badge/concurrent.futures-brown?style=for-the-badge)


## File Contents
- View the Python code for URL collection: **[url_collector.ipynb](https://github.com/chanronnie/Olympics/blob/main/url_collector.ipynb)**
- View the Python code for data scraping: **[data_scraper.ipynb](https://github.com/chanronnie/Olympics/blob/main/data_scraper.ipynb)**
- View the collected list of URLs: **[athletes_urls.json](https://github.com/chanronnie/Olympics/blob/main/raw_data/athletes_urls.json)**
- Access the datasets I created using the scraped data in the **[data folder](https://github.com/chanronnie/Olympics/tree/main/data)**:
  * **[athletes.csv](https://github.com/chanronnie/Olympics/blob/main/data/athletes.csv)**
  * **[athletes_roles.csv](https://github.com/chanronnie/Olympics/blob/main/data/athletes_roles.csv)**
  * **[host_cities.csv](https://github.com/chanronnie/Olympics/blob/main/data/host_cities.csv)**
  * **[noc_countries.csv](https://github.com/chanronnie/Olympics/blob/main/data/noc_countries.csv)**
    
- View my data analysis project using PostgreSQL: **[analysis folder](https://github.com/chanronnie/Olympics/tree/main/analysis)**

<br>

## Datasets
The datasets are stored in the **data** folder in CSV format. Here are previews of the available datasets:

### `athletes.csv`

<details>
  <summary>View Table: athletes</summary>

This table displays the statistics of Olympic athletes. Each row corresponds to every event in which the participant competed in all Olympic Games. Each row contains the biographical data of the athlete, along with the results and details of the game.
 
id | name | gender | born | died | height | weight | noc | game | team | sport | event | medal
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
131892 | Meryem Erdoğan | Female | 24 April 1990 | NaN | 172 cm | 55 kg | Türkiye | 2016 Summer Olympics | TUR | Athletics | Athletics, Marathon, Women(Olympic) | NaN
131892 | Meryem Erdoğan | Female | 24 April 1990 | NaN | 172 cm | 55 kg | Türkiye | 2020 Summer Olympics | TUR | Athletics | Athletics, Marathon, Women(Olympic) | NaN
131892 | Meryem Erdoğan | Female | 24 April 1990 | NaN | 172 cm | 55 kg | Türkiye | 2020 Summer Olympics | TUR | Athletics | Athletics, Marathon, Women(Olympic) | NaN
4300 | Maurice Maina | Male | 1 January 1963 | NaN | 158 cm | 47 kg | Kenya | 1988 Summer Olympics | KEN | Boxing | Boxing, Light-Flyweight, Men(Olympic) | NaN
4300 | Maurice Maina | Male | 1 January 1963 | NaN | 158 cm | 47 kg | Kenya | 1988 Summer Olympics | KEN | Boxing | Boxing, Light-Flyweight, Men(Olympic) | NaN

</details>

### `athletes_roles.csv`

<details>
  <summary>View Table: athletes_roles</summary>

This table lists the roles of each Olympic athlete. This dataset will be helpful when we are required to count the total number of participants in each Olympic game. Some of the available roles include:

 - `Competed in Youth Olympic Games`
 - `Competed in Intercalated Games`
 - `Competed in Olympic Games`
 - `Competed in Olympic Games (non-medal events)`
 - `Non-starter`
 - `Coach`
 - `Referee`
 - `Administrator`
 - `Other`

id | name | roles
--- | --- | ---
131892 | Meryem Erdoğan | Competed in Olympic Games
4300 | Maurice Maina | Competed in Olympic Games
60239 | Stanislav Tůma | Competed in Olympic Games
129369 | Eunice Kirwa | Competed in Olympic Games
142670 | Sinem Kurtbay | Competed in Olympic Games
18974 | Werner Delmes | Competed in Olympic Games • Coach

</details>

### `host_cities.csv`

<details>
  <summary>View Table: host_cities</summary>

This table lists all the Olympic Games that have been held throughout history. It includes the year of the games, the season, and the host city.
 
year | season | game | host_city
--- | --- | --- | ---  
1896 | Summer | 1896 Summer Olympics | Athina
1900 | Summer | 1900 Summer Olympics | Paris
1904 | Summer | 1904 Summer Olympics | St. Louis
1908 | Summer | 1908 Summer Olympics | London

</details>

### `noc_countries.csv`
<details>
  <summary>View Table: host_cities</summary>
 
 This table contained all the names and the corresponding NOCs of the countries that competed in the Modern Olympic Games.

noc | country
--- | --- 
AFG | Afghanistan
ALB | Albania
ALG | Algeria
ASA | American Samoa
AND | Andorra

</details>

<br>

## 🚀Growth and Next Steps 
**Current Performance:** Current data retrieval process, using thread concurrency, takes 4 to 6 hours for 155,600 URLs. To improve efficiency further:
- I plan to implement the `asyncio` library for asynchronous programming.
- Asynchronous tasks will allow for faster data retrieval with reduced overhead.
- This change aims to significantly decrease scraping time.
