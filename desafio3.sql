SELECT
usr.user_name AS usuario,
COUNT(his.id) AS qtde_musicas_ouvidas,
    ROUND(SUM(song.min_length) / 60,2) AS total_minutos
FROM SpotifyClone.history AS his
INNER JOIN SpotifyClone.songs AS song
    ON his.track_id = song.id
INNER JOIN SpotifyClone.users usr
    ON his.user_id = usr.id
GROUP BY usr.id
ORDER BY usuario asc;