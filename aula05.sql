CREATE TABLE tbl_cliente (

codigo_cliente integer PRIMARY KEY,
nome text NOT NULL,
cidade text,
endereco text);

CREATE TABLE tbl_titulo (

codigo_titulo integer PRIMARY KEY,
titulo text NOT NULL,
descricao text,
categoria text);

CREATE TABLE tbl_emprestimo (

numero_emprestimo integer PRIMARY KEY,
codigo_client int,
codigo_livro int);



CREATE TABLE tbl_livros (

cod_livro integer PRIMARY KEY,
codigo_titulo int,
status text);

INSERT INTO tbl_cliente (codigo_cliente,nome,cidade,endereco)
values
(1,'João da Silva', 'São Paulo', 'Rua A,123'),
(2,'Maria Santos', 'Rio de Janeiro', 'Av B, 456'),
(3,'Pedro Almeida', 'Belo Horizonte', 'Rua C,789'),
(4,'Ana Oliveira', 'Salvador', 'Av D,1011'),
(5,'Carlos Lima', 'Brasilia', 'Rua E,1213');

INSERT INTO tbl_titulo (codigo_titulo,titulo,descricao,categoria)
values
(1,'Aveturas Urbanas', 'Uma história emocionante', 'DRAMA'),
(2,'Mistérios Antigos', 'Enigmas por resolver', 'COMEDIA'),
(3,'Amor nas estrelas', 'Um romance intergalatico', 'DRAMA'),
(4,'Código Enigmatico', 'Segredos Ocultos', 'COMEDIA'),
(5,'Histórias Perdidas', 'Contos Esquecidos', 'DRAMA');

INSERT INTO tbl_livros (cod_livro,codigo_titulo,status)
values
(1,1, 'DISPONIVEL'),
(2,1, 'ALUGADO'),
(3,2, 'DISPONIVEL'),
(4,3, 'ALUGADO'),
(5,4, 'DISPONIVEL');

INSERT INTO tbl_emprestimo (numero_emprestimo,codigo_client,codigo_livro)
values
(1,1,2),
(2,2,4),
(3,3,1),
(4,4,5),
(5,5,3);

select*from tbl_cliente;

select nome as nome_cliente,cidade
from tbl_cliente
where cidade = 'São Paulo';

select nome as nome_cliente,codigo_cliente
from tbl_cliente
where codigo_cliente > 3;

select titulo as todos_titulos
from tbl_titulo;

CREATE TABLE tbl_cliente2(
codigo integer);

insert into tbl_cliente2 (codigo)
select codigo_cliente
from tbl_cliente;



