SELECT 
	art.artist_name artista,
  a.album_name album
FROM SpotifyClone.albums AS a
JOIN SpotifyClone.artists AS art
  ON a.artist_id = art.id AND art.artist_name = "Walter Phoenix";