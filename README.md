# SQL-Queries-for-MusicDB

## How to Run it

* Install MediaDB database
* Unzip the file and open MediaDB.db in DB Browser
* Load SQL code into DB Browser and execute

## Queries

* **Query 1**: What are the last names and emails of all customer who made purchased in the store?
	* Run **query1.sql**
* **Query 2:** What are the names of each album and the artist who created it?
	* Run **query2.sql**
* **Query 3:** What are the total number of unique customers for each state, ordered alphabetically by state?
	* Run **query3.sql**
* **Query 4:** Which states have more than 10 unique customers?
	* Run **query4.sql**
* **Query 5:** What are the names of the artists who made an album containing the substring "symphony" in the album title?
	* Run **query5.sql**
* **Query 6:** What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?
	* Run **query6.sql**
* **Query 7:** How many artists published at least 10 MPEG tracks?
	* Run **query7.sql**
* **Query 8:** What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.
	* Run **query8.sql**
* **Query 9:** Creative addition: Define a new meaningful query using at least three tables, and some window function. Explain clearly what your query achieves, and what the results mean.
	* Run **query9.sql** This query finds how many purchases each customer has, and ranks them with more purchases being better. The results show that all customers have purchased 38 items, and are tied, except one who has purchased 36 and is ranked behind the rest.