SELECT 
	art.artist_name artista,
  al.album_name album,
	count(fol.artist_id) seguidores
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS al
ON art.id = al.artist_id
INNER JOIN SpotifyClone.following AS fol
ON art.id = fol.artist_id
GROUP BY al.album_name, art.artist_name
ORDER BY seguidores DESC, artista, album ASC;