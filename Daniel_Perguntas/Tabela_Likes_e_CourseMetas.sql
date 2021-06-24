-- os 10 primeiros players com maior quantidade de estrelas.
SELECT A.id `ID_Jogador`,A.firstClear `Nome_Jogador`, Sum(A.stars) `Total_de_Estrelas`
FROM t5grupo4.`course-meta` A
group by A.firstClear,A.id
order by `Total_de_Estrelas` desc
limit 10;

-- Os 10 primeiros jogadores com maiores Tentativas!
SELECT A.id `ID_Jogador`,A.firstClear `Nome_Jogador`, Sum(A.attempts) `Total_de_Tentativas`
FROM t5grupo4.`course-meta` A
group by A.firstClear,A.id
order by `Total_de_Tentativas` desc
limit 10;

-- Os 10 jogadores (Todos os países) que receberam maior quantidade de curtidas;
SELECT concat(B.id," - ",B.flag) `Nome_Jogador_e_País`,B.image `Imagem_Jogador`, count(A.id) `QTA_de_Likes_recebido` FROM t5grupo4.likes A
INNER JOIN t5grupo4.player2 B 
ON A.player = B.name
group by A.player,B.id
order by `QTA_de_Likes_recebido` desc
limit 10;

-- Os 10 jogadores Brasileiros que receberam maior quantidade de curtidas;
SELECT B.id `Nome_Jogador`,B.image `Imagem_Jogador`, count(A.id) `QTA_de_Likes_recebido`, B.flag `País` FROM t5grupo4.likes A
INNER JOIN t5grupo4.player2 B 
ON A.player = B.name
group by A.player,B.id
having B.flag = 'BR'
order by `QTA_de_Likes_recebido` desc
limit 10;

-- Os Top 10 com maior tempo de jogo;
SELECT A.player `Nome_Jogador`, sum(A.timeRecord) `Total_Minutos` FROM t5grupo4.records A
group by A.player, A.timeRecord
order by sum(A.timeRecord) desc
limit 10;
-- Fim