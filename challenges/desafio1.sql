-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE artistas 
(
    artista_id	INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome	VARCHAR(512) NOT NULL
);

INSERT INTO artistas (artista_id, artista_nome) VALUES ('1', 'Beyoncé');
INSERT INTO artistas (artista_id, artista_nome) VALUES ('2', 'Queen');
INSERT INTO artistas (artista_id, artista_nome) VALUES ('3', 'Elis Regina');
INSERT INTO artistas (artista_id, artista_nome) VALUES ('4', 'Baco Exu do Blues');
INSERT INTO artistas (artista_id, artista_nome) VALUES ('5', 'Blind Guardian');
INSERT INTO artistas (artista_id, artista_nome) VALUES ('6', 'Nina Simone');

CREATE TABLE planos 
(
    plano_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano	VARCHAR(512) NOT NULL,
    valor_plano	DOUBLE NOT NULL
);

INSERT INTO planos (plano_id, nome_plano, valor_plano) VALUES ('1', 'gratuito', '0.00');
INSERT INTO planos (plano_id, nome_plano, valor_plano) VALUES ('2', 'familiar', '7.99');
INSERT INTO planos (plano_id, nome_plano, valor_plano) VALUES ('3', 'universitario', '5.99');
INSERT INTO planos (plano_id, nome_plano, valor_plano) VALUES ('4', 'pessoal', '6.99');

CREATE TABLE pessoas_usuarias 
(
    pessoa_usuaria_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_usuaria	VARCHAR(512) NOT NULL,
    idade	INT NOT NULL,
    plano_id	INT,
    data_assinatura	DATE NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);

INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('1', 'Barbara Liskov', '82', '1', '2019-10-20');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('2', 'Robert Cecil Martin', '58', '1', '2017-01-06');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('3', 'Ada Lovelace', '37', '2', '2017-12-30');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('4', 'Martin Fowler', '46', '2', '2017-01-17');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('5', 'Sandi Metz', '58', '2', '2018-04-29');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('6', 'Paulo Freire', '19', '3', '2018-02-14');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('7', 'Bell Hooks', '26', '3', '2018-01-05');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('8', 'Christopher Alexander', '85', '4', '2019-06-05');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('9', 'Judith Butler', '45', '4', '2020-05-13');
INSERT INTO pessoas_usuarias (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id, data_assinatura) VALUES ('10', 'Jorge Amado', '58', '4', '2017-02-17');

CREATE TABLE seguindo_artistas 
(
    artista_id	INT,
    pessoa_usuaria_id	INT,
    PRIMARY KEY (artista_id, pessoa_usuaria_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES pessoas_usuarias (pessoa_usuaria_id)
);

INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('1', '1');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('2', '1');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('3', '1');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('1', '2');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('3', '2');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('2', '3');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('4', '4');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('5', '5');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('6', '5');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('6', '6');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('1', '6');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('6', '7');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('3', '9');
INSERT INTO seguindo_artistas (artista_id, pessoa_usuaria_id) VALUES ('2', '10');

CREATE TABLE albuns 
(
    album_id	INT PRIMARY KEY AUTO_INCREMENT,
    album_nome	VARCHAR(512) NOT NULL,
    artista_id	INT NOT NULL,
    ano_lancamento	YEAR NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('1', 'Renaissance', '1', '2022');
INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('2', 'Jazz', '2', '1978');
INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('3', 'Hot Space', '2', '1982');
INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('4', 'Falso Brilhante', '3', '1998');
INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('5', 'Vento de Maio', '3', '2001');
INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('6', 'QVVJFA?', '4', '2003');
INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('7', 'Somewhere Far Beyond', '5', '2007');
INSERT INTO albuns (album_id, album_nome, artista_id, ano_lancamento) VALUES ('8', 'I Put A Spell On You', '6', '2012');

CREATE TABLE musicas 
(
    musica_id	INT PRIMARY KEY AUTO_INCREMENT,
    musica_nome	VARCHAR(512) NOT NULL,
    musica_duracao	INT NOT NULL,
    album_id	INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);

INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('1', 'BREAK MY SOUL', '279', '1');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('2', 'VIRGO\'S GROOVE', '369', '1');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('3', 'ALIEN SUPERSTAR', '116', '1');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('4', 'Don\'t Stop Me Now', '203', '2');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('5', 'Under Pressure', '152', '3');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('6', 'Como Nossos Pais', '105', '4');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('7', 'O Medo de Amar é o Medo de Ser Livre', '207', '5');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('8', 'Samba em Paris', '267', '6');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('9', 'The Bard\'s Song', '244', '7');
INSERT INTO musicas (musica_id, musica_nome, musica_duracao, album_id) VALUES ('10', 'Feeling Good', '100', '8');

CREATE TABLE historico_de_reproducoes 
(
    musica_id	INT,
    pessoa_id	INT,
    data_reproducao	DATETIME NOT NULL,
    PRIMARY KEY (musica_id, pessoa_id),
    FOREIGN KEY (musica_id) REFERENCES musicas (musica_id),
    FOREIGN KEY (pessoa_id) REFERENCES pessoas_usuarias (pessoa_usuaria_id)
);

INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('8', '1', '2022-02-28 10:45:55');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('2', '1', '2020-05-02 05:30:35');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('10', '1', '2020-03-06 11:22:33');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('10', '2', '2022-08-05 08:05:17');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('7', '2', '2022-08-05 08:05:17');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('10', '3', '2020-11-13 16:55:13');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('2', '3', '2020-12-05 18:38:30');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('8', '4', '2021-08-15 17:10:10');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('8', '5', '2022-01-09 01:44:33');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('5', '5', '2020-08-06 15:23:43');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('7', '6', '2017-01-24 00:31:17');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('1', '6', '2017-10-12 12:35:20');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('4', '7', '2011-12-15 22:30:49');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('4', '8', '2012-03-17 14:56:41');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('9', '9', '2022-02-24 21:14:22');
INSERT INTO historico_de_reproducoes (musica_id, pessoa_id, data_reproducao) VALUES ('3', '10', '2015-12-13 08:30:22');
