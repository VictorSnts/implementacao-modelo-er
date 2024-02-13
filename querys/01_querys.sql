# 0- Selecionando todos os dados
select * from LIVROS;

# 1- Livros da categoria "Poesia"
select * from LIVROS 
	where CATEGORIA = "Poesia";

# 2- Livros da categoria "Romance" que custam menos de R$48
select * from LIVROS 
	where CATEGORIA = "Romance" and PRECO < 48;

# 3- Livros da categoria "Poesia" que nao sao de Gabriel Pedrosa nem de Luís Vaz de Camões
select * from LIVROS 
	where CATEGORIA = "Poesia" and not (AUTORIA = "Gabriel Pedrosa" OR AUTORIA = "Luís Vaz de Camões");

# 4- id e nome dos livros que já foram vendidos
select DISTINCT VENDAS.ID_LIVRO, LIVROS.NOME_LIVRO from VENDAS
	left join LIVROS
    on VENDAS.ID_LIVRO = LIVROS.ID_LIVRO;

# 5- Deletando um livro pelo id
delete from ESTOQUE where ID_LIVRO = 3;
delete from LIVROS where ID_LIVRO = 3;

# 6- Alterando preco de todos os livros aplicando 10% de desconto
update LIVROS set PRECO = 0.9*PRECO

#7 - Exibir o nome do vendedor e o numero de vendas dele
select VENDEDORES.NOME_VENDEDOR, count(VENDAS.ID_VENDEDOR) as NUMERO_VENDAS from VENDAS
	inner join VENDEDORES
    on VENDAS.ID_VENDEDOR = VENDEDORES.ID_VENDEDOR
	group by VENDAS.ID_VENDEDOR order by VENDAS.ID_VENDEDOR;

#8 - Exibir o nome do vendedor e a quantidade de itens vendidos por ele
select VENDEDORES.NOME_VENDEDOR, sum(VENDAS.QTD_VENDIDA) as LIVROS_VENDIDOS from VENDAS
	inner join VENDEDORES
    on VENDAS.ID_VENDEDOR = VENDEDORES.ID_VENDEDOR
	group by VENDAS.ID_VENDEDOR order by VENDAS.ID_VENDEDOR;

#9 - Exibir o nome dos livros e a quantidade vendida
select LIVROS.NOME_LIVRO, sum(VENDAS.QTD_VENDIDA) as QTD_VENDIDA from LIVROS
	inner join VENDAS
    on LIVROS.ID_LIVRO = VENDAS.ID_LIVRO
	group by LIVROS.NOME_LIVRO order by LIVROS.NOME_LIVRO;