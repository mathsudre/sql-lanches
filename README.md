# SQL Lanches

> Overview da aplicação.
> 

## 📑 Sobre o projeto

Esse projeto foi meu primeiro contato com os comandos/linguagem SQL e utilizando o sistema de banco de dados relacional PostgreSQL, onde estruturamos um banco de dados que possui todos os tipos de relacionamentos. Foi desenvolvido durante o quarto módulo referente ao curso de Desenvolvimento FullStack da Kenzie Academy Brasil, sendo o primeiro módulo focado totalmente em Back-End.

SQL Lanches, uma lancheria que vende hambúrgueres, acompanhamentos e bebidas.

## ✍🏻 As entidades (tabelas) que fazem parte desse contexto são as seguintes:
  Aa tabelas foram feitas a partir da interpretação das informações contidas no [Diagrama ER](https://conteudo-kenzie-fullstack.vercel.app/modulo_4/sprint_3/_entrega/img/sqlanches_der.png) fornecido pela Kenzie Academy Brasil:
- Clientes;
- Endereços;
- Produtos;
- Pedidos;
- Produtos_Pedidos (tabela pivô);

## 📑 SELECTS

1. Através do primeiro SELECT e possível consultar por todos os pedidos juntamente com todas as informações dos produtos que estão em cada um dos pedidos.

2. Através do segundo SELECT e possível consultar pelo ID de todos os pedidos e que incluam 'Fritas' (conforme proposto pela entrega).

3. Através do terceiro SELECT foi feita a consulta novamente por pedidos que incluam 'Fritas', porém agora, teriamos que retornar apenas uma coluna (gostam_de_fritas) com o nome dos Clientes que fizeram os pedidos.

4. Através do quarto SELECT teriamos que criar uma query que retornasse o custo total dos pedidos da 'Laura'.

5. Através do quinto SELECT teriamos que criar uma query que retornasse em uma coluna o nome do produto, e na outra, o número de vezes que ele foi pedido. 

## 📑 CRUD

Nesta parte da construção do banco de dados teriamos que simular como são as ações de criação (create), leitura (read), atualização (update) e deleção (delete) para ter uma ideia de como essas ações se traduzem no contexto do banco de dados. 

1. Criação de um novo cliente;

2. Criação de um novo pedido;

3. Adição de produtos ao pedido que criamos, fazendo uma inserção na tabela que liga os produtos aos pedidos: produtos_pedido;

4. Verificar se a criação do cliente que foi feita no passo 1 deu certo, selecionando os dados da tabela clientes, juntamente com os pedidos e os produtos dos pedidos da cliente Georgia.

5. Vamos usar da atualização para passar os pontos de lealdade dos pedidos da nossa usuária Georgia.As atualizações podem ser traduzidas em uma cláusula de UPDATE.

6. A Deleção é traduzida no banco como uma cláusula de DELETE. Com a deleção, devemos tomar o cuidado de definir como o banco de dados irá tratar as deleções uma vez que temos dados relacionados. E foi por isso, que fomos orientados para usar a cláusula de ON DELETE CASCADE, pois assim um DELETE não estará desrespeitando a integridade referencial das tabelas pois adicionamos a regra ao banco.


