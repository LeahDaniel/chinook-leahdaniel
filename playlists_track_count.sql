-- Provide a query that shows the total number of tracks in each playlist. 
-- The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT COUNT(*) totalTracks, p.name
FROM Playlist p
JOIN PlaylistTrack pt ON pt.playlistId = p.playlistId
GROUP BY pt.playlistId

--Same as:

SELECT COUNT(*) totalTracks, p.name
FROM PlaylistTrack pt
JOIN Playlist p ON pt.playlistId = p.playlistId
GROUP BY pt.playlistId