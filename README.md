# Olympics Athletes Web Scraping Project (1896 - 2022)
This repository contains all the files for my web scraping project. 
My goal is to retrieve biographical data and game results for all Olympic athletes from 1896 to 2022 for both Summer and Winter games. 
To speed up my data scraping process, I am using the `threading concurrency` method, which allows me to handle and execute multiple tasks simultaneously by using the `concurrent.futures` library

## Table of Contents
* [About Data](#about-data)
* [Technologies](#technologies)
* [File Contents](#file-contents)
* [Datasets](#datasets)

## About Data
The data are scraped from the [Olympedia.org](https://www.olympedia.org) website.\
To obtain all the athlete data, we need to gather 
- the URLs of all countries that participated in the Olympics
- then, the URLs of all games in which each country participated (games are referred to as "editions" on the Olympedia website)
- finally, the URLs of all athletes who participated in those games


## Technologies
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) 
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white) 
![BeautifulSoup](https://img.shields.io/badge/BeautifulSoup-grey?style=for-the-badge)
![concurrent.futures](https://img.shields.io/badge/concurrent.futures-brown?style=for-the-badge)


## File Contents
- View the Python code for URL collection: [url_collector.ipynb](https://github.com/chanronnie/Olympics/blob/main/url_collector.ipynb)
- View the Python code for data scraping: [data_scraper.ipynb](https://github.com/chanronnie/Olympics/blob/main/data_scraper.ipynb)
- View the collected list of URLs: [athletes_urls.json](https://github.com/chanronnie/Olympics/blob/main/raw_data/athletes_urls.json)
- Access the datasets I created using the scraped data:
  * [athletes.csv](https://github.com/chanronnie/Olympics/blob/main/data/athletes.csv)
  * [host_cities.csv](https://github.com/chanronnie/Olympics/blob/main/data/host_cities.csv)
 
## Datasets
Here are the previews of my datasets:


### [athletes.csv](https://github.com/chanronnie/Olympics/blob/main/data/athletes.csv)

id | name | gender | born | died | height | weight | noc | game | team | sport | event | medal
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
131892 | Meryem Erdoğan | Female | 24 April 1990 | NaN | 172 cm | 55 kg | Türkiye | 2016 Summer Olympics | TUR | Athletics | Athletics, Marathon, Women(Olympic) | NaN
131892 | Meryem Erdoğan | Female | 24 April 1990 | NaN | 172 cm | 55 kg | Türkiye | 2020 Summer Olympics | TUR | Athletics | Athletics, Marathon, Women(Olympic) | NaN
131892 | Meryem Erdoğan | Female | 24 April 1990 | NaN | 172 cm | 55 kg | Türkiye | 2020 Summer Olympics | TUR | Athletics | Athletics, Marathon, Women(Olympic) | NaN
4300 | Maurice Maina | Male | 1 January 1963 | NaN | 158 cm | 47 kg | Kenya | 1988 Summer Olympics | KEN | Boxing | Boxing, Light-Flyweight, Men(Olympic) | NaN
4300 | Maurice Maina | Male | 1 January 1963 | NaN | 158 cm | 47 kg | Kenya | 1988 Summer Olympics | KEN | Boxing | Boxing, Light-Flyweight, Men(Olympic) | NaN


### [host_cities.csv](https://github.com/chanronnie/Olympics/blob/main/data/host_cities.csv)

year | season | game | host_city
--- | --- | --- | ---  
1896 | Summer | 1896 Summer Olympics | Athina
1900 | Summer | 1900 Summer Olympics | Paris
1904 | Summer | 1904 Summer Olympics | St. Louis
1908 | Summer | 1908 Summer Olympics | London
