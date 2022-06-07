SELECT 
	song.track cancao,
	COUNT(his.track_id) reproducoes
FROM 	SpotifyClone.history AS his
JOIN SpotifyClone.songs song
  ON his.track_id = song.id
GROUP BY track_id 
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;