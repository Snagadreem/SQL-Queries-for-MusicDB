SELECT Name
FROM artists
INNER JOIN albums
ON albums.ArtistId = artists.ArtistId
WHERE Title LIKE '%symphony%'