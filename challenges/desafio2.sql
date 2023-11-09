SELECT
	COUNT(DISTINCT mus.musica_id) AS cancoes,
  COUNT(DISTINCT art.artista_id) AS artistas,
  COUNT(DISTINCT alb.album_id) AS albuns
    FROM musicas mus
      INNER JOIN albuns alb
        ON mus.album_id = alb.album_id
      INNER JOIN artistas art
        ON art.artista_id = art.artista_id;