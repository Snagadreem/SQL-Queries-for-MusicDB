SELECT DISTINCT artists.Name
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
JOIN playlist_track ON tracks.TrackId = playlist_track.TrackId
JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId
WHERE (playlists.Name = 'Grunge' OR playlists.Name = 'Brazilian Music')
  AND tracks.MediaTypeId = 1;