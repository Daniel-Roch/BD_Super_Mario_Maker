SELECT 
COUNT(*) as QuantidadeFases 
FROM t5grupo4.clears
 where catch >= '2018-01-01'
 and catch < '2019-01-01' -- quantas fases foram zeradas neste perido

select 
distinct player as Jogador , 
count(*) as FasesConcluidas 
from t5grupo4.clears 
group by player 
order by 2 desc limit 10 -- top 10 jogador e fases concluidas por ele

select 
distinct player as Jogador ,
count(*) as FasesConcluidas  
from  t5grupo4.clears 
where catch >= '2017-01-01' and
catch < '2018-01-01'
 group by player 
 order by 2 desc limit 10

select 
count(*) from t5grupo4.clears -- quantidade de fases concluidas.