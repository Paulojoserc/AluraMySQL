/*Resumo do que foi feito na aula 4 */

/*Crie uma nova consulta */
USE sucos;

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1040107', 'Light - 350 ml - Melância',
'Lata', '350 ml', 'Melância', 4.56);

/*O comando acima irá inserir um registro na tabela */

/*Você verá que o registro foi inserido na tabela. Com o comando abaixo */
SELECT * FROM tbproduto;

/*Agora o comando abaixo irá inserir diversos produtos na tabela. */
USE sucos;

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1037797', 'Clean - 2 Litros - Laranja',
'PET', '2 Litros', 'Laranja', 16.01);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1000889', 'Sabor da Montanha - 700 ml - Uva',
'Garrafa', '700 ml', 'Uva', 6.31);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1004327', 'Videira do Campo - 1,5 Litros - Melância',
'PET', '1,5 Litros', 'Melância', 19.51);
/*Você verá que o registro foi inserido na tabela. Com o comando abaixo */
SELECT * FROM tbproduto;

/*Digite o comando abaixo para inserir outros registros na tabela:*/
USE sucos;

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

/*Agora vamos alterar algumas informações dos registros acima incluídos. Digite:*/
USE sucos;

UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';

/*Você verá que o registro foi inserido na tabela. Com o comando abaixo */
SELECT * FROM tbproduto;

/*Podemos excluir registros já existentes na tabela. Para isso digite, 
em um outro script do Workbench, os comandos abaixo:*/
USE sucos;

DELETE FROM tbproduto WHERE PRODUTO = '1078680';

/*Você verá que o registro foi apagado executando: */
SELECT * FROM tbproduto;

/*Vimos, nas definições de banco de dados, que uma tabela pode ter uma chave primária. Vamos, abaixo, criar uma chave primária para a tabela de produtos. */
USE sucos;

ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);

/*Execute o comando abaixo duas vezes: */

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

/*Note que, da segunda vez, o comando não pode ser executado apresentando erro porque viola a chave primária.*/

/*Caso você deseje mudar algo neste registro deve altera-lo: */
UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';
/*Inclua uma chave primária na tabela de clientes:*/
USE sucos;

ALTER TABLE tbcliente ADD PRIMARY KEY (CPF);

/*Inclua uma chave primária na tabela de clientes:*/
ALTER TABLE tbcliente ADD COLUMN (DATA_NASCIMENTO DATE);

/*Abaixo temos o comando para incluir um novo cliente. Note como tratamos a inclusão de um campo do tipo data (DATA_NASCIMENTO) e do tipo lógico (PRIMEIRA_COMPRA).*/

INSERT INTO tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, 
LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES ('00388934505','João da Silva','Rua projetada A número 10','',
'VILA ROMAN', 'CARATINGA', 'AMAZONAS','2222222',30,'M', 10000.00, 2000,
0, '1989-10-05');