-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1) Criação


INSERT INTO 
	clientes(nome,lealdade)
VALUES 
	('Georgia',0);


-- 2) Criação


INSERT INTO
	pedidos(status,cliente_id)
VALUES 
	('Recebido',(SELECT id FROM clientes WHERE nome = Georgia'));



-- 3) CRIAÇÃO


INSERT INTO 
	produtos_pedidos(pedido_id,produto_id)
VALUES
(6, 1),
(6, 2),
(6, 6),
(6, 8),
(6, 8);	


-- Leitura 


-- 1) SELECT

SELECT 
	cli.*, pedi.*, prod.*
FROM 
	clientes cli 
JOIN 
	pedidos pedi ON cli.id = pedi.cliente_id 
JOIN 
	produtos_pedidos pp ON pedi.id = pp.pedido_id
JOIN 
	produtos prod ON pp.produto_id = prod.id
WHERE 
	cli.nome = 'Georgia';


-- Atualização

-- 1) UPDATE


UPDATE
 	clientes
SET
	lealdade = (
SELECT
    SUM(pts_de_lealdade)
FROM
	produtos_pedidos
JOIN 
	pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN 
	produtos ON produtos.id = produtos_pedidos.produto_id
JOIN 
	clientes ON clientes.id = pedidos.cliente_id
WHERE
    clientes.nome = 'Georgia' )
WHERE
	clientes.nome = 'Georgia';


-- Deleção

-- 1) DELETE

DELETE FROM clientes WHERE nome = 'Marcelo';

