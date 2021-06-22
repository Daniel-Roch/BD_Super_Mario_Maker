use mario_maker;

select records.player, timeRecord `maior tempo jogado`
 from records
 order by `maior tempo jogado` DESC;