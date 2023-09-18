Select * From songs
#removing duplicates
SELECT DISTINCT * FROM songs;
 #Removin columns that are not gonna be used 

ALTER TABLE songs 
drop column`instrumentalness_%`,
drop column `liveness_%`,
Drop column`speechiness_%` ,
Drop column`acousticness_%`,
Drop column`energy_%`,
Drop column`valence_%`,
Drop column`danceability_%`,
Drop column`mode`,
Drop column`key`,
Drop column`bpm`;

select * from songs 
commit

#deliting all of the values from the spotify  charts that are equal to 0 

DELETE FROM songs
WHERE in_spotify_charts = 0;

#deliting all of the values from the apple  charts that are equal to 0 

DELETE FROM songs
WHERE in_apple_charts = 0;

#deliting all of the values from shazam   charts that are equal to 0 

DELETE FROM songs
WHERE in_shazam_charts = 0;

