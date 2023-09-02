SELECT t.titulo, l.status
FROM tbl_titulo t
left JOIN tbl_livros l ON t.codigo_titulo = l.codigo_titulo;

SELECT t.titulo, l.status
FROM tbl_titulo t
INNER JOIN tbl_livros l ON t.codigo_titulo = l.codigo_titulo
where l.status = 'ALUGADO';

select c.nome
from tbl_cliente as c
left join tbl_emprestimo as e on c.codigo_cliente = e.codigo_cliente

where e.numero_emprestimo is null;

