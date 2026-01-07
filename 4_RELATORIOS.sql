SELECT NOME, NOME_IMOVEL, DATA_INICIO FROM PROPRIEDADES 
join reservas on FK_PROPRIEDADES = ID
join HOSPEDES ON FK_HOSPEDES = HOSPEDES.ID;
 
select *from reservas 
where valor_total >= 500;

create view vw_faturamento_por_imovel as 
select nome_imovel, count(nome_imovel) ,sum(valor_total),
concat ('valor total é', ':'),
avg (valor_total),
lower ('TesTe'),
upper ('TesTe')
from reservas 
join propriedades on fk_propriedades = id
group by nome_imovel ;

select *from vw_faturamento_por_imovel;