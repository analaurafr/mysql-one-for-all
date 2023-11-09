SELECT
  al.album_nome AS album,
  COUNT(mf.musica_id) AS favoritadas
FROM
  musicas_favoritas mf
JOIN musicas m ON mf.musica_id = m.musica_id
JOIN albuns al ON m.album_id = al.album_id
GROUP BY album
ORDER BY favoritadas DESC, album
LIMIT 3;
