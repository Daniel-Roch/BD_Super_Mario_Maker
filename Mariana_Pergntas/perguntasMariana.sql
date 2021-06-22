use t5grupo4;
select * from plays;
-- QUANTOS JOGARES JÁ JOGARAM?
select count(player) 
as quantas_vezes_houve_login 
from t5grupo4.plays; -- resposta obtida 2808;


-- Quantos ids diferentes temos na plays?
select count(distinct id) 
as qte_ids_diferentes 
from t5grupo4.plays; 

-- Mundos criados no Mario?
select distinct t5grupo4.courses.gameStyle 
as mundos_no_Mario 
from courses;




