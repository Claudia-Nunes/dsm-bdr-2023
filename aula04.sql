create domain chk_categoriaa text check (value='DRAMA' or value='comedia');
create domain chk_status text check (value='DISPONIVEL' or value='ALUGADO');




ALTER TABLE IF EXISTS public.tbl_emprestimo
    ADD CONSTRAINT claudia FOREIGN KEY (codigo_client)
    REFERENCES public.tbl_cliente (codigo_cliente) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;