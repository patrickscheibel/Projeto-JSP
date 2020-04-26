create table cliente(id serial PRIMARY KEY, usuario varchar not null, senha varchar not null); 

insert into cliente values(default, 'Juca', '123')

create table marca(id serial PRIMARY KEY, nome varchar(100) not null,descricao varchar(100));

insert into marca values(default, 'Teste', 'Softwares');

create table produto(id serial PRIMARY KEY, nome varchar(100) not null, descricao varchar(100), marca_id int not null, foreign key (marca_id) references marca(id));

insert into produto values(default, 'Galaxy', 'Celular', 1);
