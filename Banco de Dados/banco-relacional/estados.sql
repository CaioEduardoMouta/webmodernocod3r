create table estados (
	id int UNSIGNED NOT NULL auto_increment,
    nome VARCHAR(45) not null,
    sigla VARCHAR(2) not null,
    regiao ENUM('Norte','Nordeste','Centro-Oeste','Sudeste','Sul')not  null,
    populacao DECIMAL(5,2) not null,
    primary key (id),
    Unique Key (nome),
    unique key (sigla)
);
create database pais

drop table estados
use pais

insert into estados (nome, sigla, regiao, populacao)
values ('Acre','AC','Norte',0.83)

insert into estados
	(nome, sigla, regiao, populacao)
values  ('Alagoas','AL','Nordeste',0.83),
		('Amapá','AP','Norte',0.83),
        ('Amazonas','AM','Norte',4.03);

select * from estados


INSERT INTO estados
    (nome, sigla, regiao, populacao)
VALUES
    ('Bahia', 'BA', 'Nordeste', 15.34),
    ('Ceará', 'CE', 'Nordeste', 9.02),
    ('Distrito Federal', 'DF', 'Centro-Oeste', 3.04),
    ('Espirito Santo', 'ES', 'Sudeste', 4.02),
    ('Goiás', 'GO', 'Centro-Oeste', 6.78),
    ('Maranhao', 'MA', 'Nordeste', 7.00),
    ('Mato Grosso', 'MT', 'Centro-Oeste', 3.34),
    ('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.71),
    ('Minas Gerais', 'MG', 'Sudeste', 21.12),
    ('Pará', 'PA', 'Norte', 8.36),
    ('Paraiba', 'PB', 'Nordeste', 4.03),
    ('Paraná', 'PR', 'Sul', 11.22),
    ('Pernambuco', 'PE', 'Nordeste', 9.47),
    ('Piaui', 'PI', 'Nordeste', 3.22),
    ('Rio de Janeiro', 'RJ', 'Sudeste', 16.72),
    ('Rio Grande do Norte', 'RN', 'Nordeste', 3.51),
    ('Rio Grande do Sul', 'RS', 'Sul', 11.32),
    ('Rondonia', 'RO', 'Norte', 1.81),
    ('Roraima', 'RR', 'Norte', 0.52),
    ('Santa Catarina', 'SC', 'Sul', 7.01),
    ('São Paulo', 'SP', 'Sudeste', 45.10),
    ('Sergipe', 'SE', 'Nordeste', 2.29),
    ('Tocantins', 'TO', 'Norte', 1.55);

select * from estados 

select nome, sigla from estados

select nome, regiao from estados 
where populacao >= 10 
order by populacao

update estados set nome = 'Ceará' where sigla = 'CE';

update estados set nome = 'Maranhão' where sigla = 'MA';

update estados set nome = 'Paraná',
 populacao = 11.32 where sigla = 'PR';


select nome from estados where sigla="MA"


select sigla, nome as 'Nome do Estado' from estados
where regiao = 'Sul'

select nome, regiao , populacao from estados where populacao >= 10
order by populacao desc


select nome from estados where sigla = 'CE'

insert into estados (id, nome, sigla, regiao, populacao)
values (1000, 'novo', 'NV', 'Sul', 2.53)

delete from estados where sigla = 'NV'

delete from estados where id >= 1000

select 
    regiao as 'Região',
    sum(populacao) as total
from estados 
GROUP BY regiao
order by Total desc;


select 
	regiao as 'regiao',
    sum(populacao) as total
from estados 
group by regiao
order by Total desc

create table if not exists cidades (
	id int unsigned not null auto_increment,
    nome VARCHAR(255) not null,
    estado_id int unsigned not null,
    area decimal(10,2),
    PRIMARY KEY (id),
    FOREIGN KEY (estado_id) references estados (id)
);

select * from cidades

drop table if exists teste;

select * from estados where id = 26

insert into cidades (nome , area, estado_id)
values ('Campinas',795, 25);

insert into cidades 
(nome , area, estado_id)
values ('Caruaru',920.6, 
(select id from estados where sigla = 'PE')
)

insert into cidades 
(nome , area, estado_id)
values ('São Vicente',290.6, 
(select id from estados where sigla = 'SP')
)

insert into cidades 
(nome , area, estado_id)
values ('Penha',920.6, 
(select id from estados where sigla = 'SC')
)
insert into cidades 
(nome , area, estado_id)
values ('Gramado',310.2, 
(select id from estados where sigla = 'RS')
)
insert into cidades 
(nome , area, estado_id)
values ('Juazeiro do Norte',240.6, 
(select id from estados where sigla = 'CE')
)

insert into cidades 
(nome , area, estado_id)
values ('Torres',220.6, 
(select id from estados where sigla = 'RS')
)

insert into cidades 
(nome , area, estado_id)
values ('Buzios',420.6, 
(select id from estados where sigla = 'RJ')
)

select c.nome, e.sigla from estados e, cidades c
where e.id = c.estado_id;

select 
	c.nome as Cidade,
	e.nome as Estado,
    e.regiao as Região
from estados e
inner join cidades c on e.id = c.estado_id

use pais

create table prefeitos (
	id int unsigned not null AUTO_INCREMENT,
    nome varchar(255) not null,
    cidade_id int unsigned,
    primary key (id),
    unique key (cidade_id),
    foreign key (cidade_id) references cidades (id)
)

insert into prefeitos 
	(nome, cidade_id)
values
	('Rodrigo Neves', 2),
    ('Raquel Lyra',3),
    ('Fagner' ,1),
    ('Mika',4),
    ('Zenaldo Coutinho', null);
    
select * from cidades c
 inner join prefeitos p on c.id = p.cidade_id;

select * from cidades c
 inner  join prefeitos p on c.id = p.cidade_id;
 
 select * from cidades c
 left  join prefeitos p on c.id = p.cidade_id
 union
 select * from cidades c
 right  join prefeitos p on c.id = p.cidade_id;
 
select * from cidades c
 full join prefeitos p on c.id = p.cidade_id;

create table if not exists empresas (
	id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cnpj int unsigned,
    primary key (id),
    unique key (cnpj)
);

create table empresas_unidades (
	empresa_id int unsigned not null,
    cidade_id int unsigned not null,
    sede tinyint(1) not null,
    primary key (empresa_id, cidade_id)
);

alter table empresas modify cnpj varchar(14);

insert into empresas 
	(nome, cnpj)
values 
	('Bradesco',98712345876123),
    ('Itaú',02918263841026),
    ('Caixa',27391825948512);
    
desc empresas;

insert into empresas_unidades
	(empresa_id,cidade_id, sede)
values
	(1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);

use pais

select e.nome Empresa , c.nome Cidade
from empresas e, empresas_unidades eu, cidades c
where e.id = eu.empresa_id
and c.id = eu.cidade_id and sede

