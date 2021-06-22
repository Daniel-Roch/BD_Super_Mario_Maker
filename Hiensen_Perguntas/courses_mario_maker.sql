
SELECT COUNT(*) FROM  t5grupo4.courses  -- NÚMERO DE FASES 

SELECT COUNT(*)
 FROM  t5grupo4.courses
 WHERE 
 creation >= '2017-01-01'and
 creation <'2018-01-01' -- fases criadas neste período

select  
distinct maker as Jogador, 
count(*) as FasesCriadas  
from t5grupo4.courses  
group by maker 
order by 2 
desc limit 10 -- to 10,  criadores de fases e o número de fases que ele criou

select 
 distinct gameStyle, 
 count(*)  from t5grupo4.courses  
 group by gameStyle 
 order by 2 desc  -- tipo de (mundo mário) jogo escolhido e quantidade de fases

select  
distinct difficulty as DIFICULDADE, 
count(*) as FasesCriadas
from t5grupo4.courses  
group by difficulty 
order by 2 desc --  fases criadas por dificuldadeclears


 