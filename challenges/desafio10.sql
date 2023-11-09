-- Descomente e altere as linhas abaixo:

CREATE TABLE musicas_favoritas 
(
    pessoa_usuaria_id	INT,
    musica_id	INT,
    PRIMARY KEY (pessoa_usuaria_id, musica_id),
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES pessoas_usuarias (pessoa_usuaria_id),
    FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
);

INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('1', '3');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('1', '6');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('1', '10');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('2', '4');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('3', '1');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('3', '3');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('4', '7');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('4', '4');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('5', '10');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('5', '2');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('8', '4');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('9', '7');
INSERT INTO musicas_favoritas (pessoa_usuaria_id, musica_id) VALUES ('10', '3');
