SELECT count(*) quantidade_musicas_no_historico
FROM SpotifyClone.users AS usr
INNER JOIN SpotifyClone.history AS his
ON his.user_id = usr.id
WHERE usr.user_name LIKE 'Bill%'