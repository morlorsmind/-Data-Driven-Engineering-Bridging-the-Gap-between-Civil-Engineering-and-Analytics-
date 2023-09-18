
Select * From songs

#deliting all of the values from the spotify  charts that are equal to 0 

DELETE FROM songs
WHERE in_spotify_charts = 0;

##showing the top 30 artist from the spotify charts 

SELECT `artist(s)_name`, in_spotify_charts, streams
FROM (
    SELECT `artist(s)_name`, in_spotify_charts,  streams,
           RANK() OVER (ORDER BY  in_spotify_charts asc) AS artist_rank
    FROM songs
) ranked_artists
WHERE artist_rank >= 10
Limit 30 ;

in_apple_charts

##showing the top 30 artist from the apple charts 

SELECT `artist(s)_name`, in_apple_charts, streams
FROM (
    SELECT `artist(s)_name`, in_apple_charts,  streams,
           RANK() OVER (ORDER BY  in_apple_charts asc) AS artist_rank
    FROM songs
) ranked_artists
WHERE artist_rank >= 10
Limit 30 ;


SELECT `artist(s)_name`, in_shazam_charts, streams
FROM (
    SELECT `artist(s)_name`, in_shazam_charts,  streams,
           RANK() OVER (ORDER BY  in_shazam_charts asc) AS artist_rank
    FROM songs
) ranked_artists
WHERE artist_rank >= 10
Limit 30 ;

##top artist in_spotify_playlists


SELECT `artist(s)_name`, in_spotify_charts, in_spotify_playlists
FROM (
    SELECT `artist(s)_name`, in_spotify_charts,  in_spotify_playlists,
           RANK() OVER (ORDER BY in_spotify_playlists asc) AS artist_rank
    FROM songs
) ranked_artists
WHERE artist_rank >= 10
Limit 30 ;
select * from songs
