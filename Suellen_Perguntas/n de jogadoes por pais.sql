use mario_maker;

select flag, count(flag) `nº de jogadoes por país` from player2 group by flag order by `nº de jogadoes por país` desc;