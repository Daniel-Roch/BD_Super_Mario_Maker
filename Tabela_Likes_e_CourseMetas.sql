-- os 10 primeiros players com maior quantidade de estrelas.
SELECT A.id `ID_Jogador`,A.firstClear `Nome_Jogador`, Sum(A.stars) `Total_de_Estrelas`
FROM t5grupo4.`course-meta` A
group by A.firstClear,A.id
order by Sum(A.stars) desc
limit 10;

-- Os 10 primeiros jogadores com maiores Tentativas!
SELECT A.id `ID_Jogador`,A.firstClear `Nome_Jogador`, Sum(A.attempts) `Total_de_Tentativas`
FROM t5grupo4.`course-meta` A
group by A.firstClear,A.id
order by Sum(A.stars) desc
limit 10;

-- Os 10 jogadores que receberam maior quantidade de curtidas
SELECT B.id `NomeJogador`,B.image `ImagemJogador`, count(A.id) `QTA_de_Likes_recebido`, B.flag `País` FROM t5grupo4.likes A
INNER JOIN t5grupo4.player2 B 
ON A.player = B.name
group by A.player,B.id
order by count(A.id) desc
limit 10;

-- Alerta : Tabela quebra sistema
SELECT A.catch,A.id,A.player FROM t5grupo4.likes A 
INNER JOIN t5grupo4.`course-meta` B
ON A.id = B.players group by A.catch,A.id,A.player Limit 10;