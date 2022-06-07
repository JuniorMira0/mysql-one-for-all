SELECT
usr.user_name AS usuario,
IF(
  MAX(YEAR(his.date_history)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.history his
INNER JOIN SpotifyClone.users usr
ON his.user_id = usr.id
GROUP BY usr.id
ORDER BY usuario asc;