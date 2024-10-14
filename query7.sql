SELECT COUNT(*) AS ArtistCount
FROM (SELECT artists.Name, Count(*) AS count
FROM tracks
JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
JOIN albums ON tracks.AlbumId = albums.AlbumId
JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE media_types.Name LIKE '%MPEG%'
GROUP BY artists.ArtistId
HAVING count > 10);