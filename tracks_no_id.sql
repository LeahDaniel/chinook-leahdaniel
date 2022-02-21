-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT t.name trackName, a.title albumTitle, m.name mediaTypeName, g.name genreName
FROM Track t
JOIN Album a ON a.albumId = t.albumId
JOIN MediaType m ON m.mediaTypeId = t.mediaTypeId
JOIN Genre g ON g.genreId = t.genreId
ORDER BY albumTitle