-- Top 10 most streamed tracks
SELECT track_name, artist_names, MAX(streams) AS max_streams
FROM spotify_tracks
GROUP BY track_name, artist_names
ORDER BY max_streams DESC
LIMIT 10;

-- Top 10 artists by total streams
SELECT artist_names, SUM(streams) AS total_streams
FROM spotify_tracks
GROUP BY artist_names
ORDER BY total_streams DESC
LIMIT 10;

-- Top 20 artists by total streams
SELECT artist_names, SUM(streams) AS total_streams
FROM spotify_tracks
GROUP BY artist_names
ORDER BY total_streams DESC
LIMIT 20;

-- Top 25 artists by total streams
SELECT artist_names, SUM(streams) AS total_streams
FROM spotify_tracks
GROUP BY artist_names
ORDER BY total_streams DESC
LIMIT 25;

--All Songs that have been rank 1
SELECT DISTINCT track_name, artist_names
FROM spotify_tracks
WHERE peak_rank = 1;

--Top 20 songs that have been on the chart the longest 
SELECT 
    track_name,
    artist_names,
    days_on_chart
FROM spotify_tracks
ORDER BY days_on_chart DESC
LIMIT 20;

--Songs on the chart that have been there for less than 30 days
SELECT 
    track_name,
    artist_names,
    days_on_chart
FROM spotify_tracks
WHERE days_on_chart < 30
ORDER BY days_on_chart ASC;

--Songs in the top 50 that have been on the chart for less than 30 days
SELECT DISTINCT track_name, artist_names
FROM spotify_tracks
WHERE chart_rank <= 50 AND days_on_chart < 30;

--Artists that appear more than once on the chart
SELECT artist_names, COUNT(*) AS appearances
FROM spotify_tracks
GROUP BY artist_names
HAVING COUNT(*) > 1
ORDER BY appearances DESC;

--Songs with above average streams (Average based on the 200 chart songs)
SELECT track_name, artist_names, streams
FROM spotify_tracks
WHERE streams > (
    SELECT AVG(streams)
    FROM spotify_tracks
)
ORDER BY streams DESC