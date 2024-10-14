SELECT playlists.PlaylistId, playlists.Name, ROUND(
(SUM(tracks.Milliseconds) / 3600000), 2) AS Runtime
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
GROUP BY playlists.PlaylistId
HAVING Runtime > 2;