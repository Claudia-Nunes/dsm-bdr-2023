create table tabela01 (agencia text);
create table tabela02 (nome varchar(30));


create table if not exists agencia(
  id integer not null primary key,
  cidade_agencia varchar not null,
  endereco-agencia varchar not null;

create table if not exists agencia(
  id integer not null primary key,
  nome_agencia varchar not null,
  cidade_agencia varchar not null,
  depositos varchar not null);
  
create table if not exists emprestimo(
  id integer not null primary key,
  numero_emprestimo varchar not null,
  valor varchar not null);

create table if not exists agencia(
  id integer not null primary key,
  numero_agencia varchar not null,
  saldo varchar not null);

drop table if exists tabela01;

drop table if exists tabela02;

alter table agencia add column idade integer;
alter table agencia rename column idade to idades;
alter table agencia drop column idades;
alter table agencia rename to tbagencia;

alter table agencia rename column cidade_agencia to endereco_agencia;
alter table agencia rename to tbagencia;




