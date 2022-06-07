SELECT
	COUNT(DISTINCT s.id) cancoes,
	COUNT(DISTINCT a.id) artistas,
	COUNT(DISTINCT s.album_id) albuns
FROM 
SpotifyClone.songs AS s
INNER JOIN SpotifyClone.artists AS a;