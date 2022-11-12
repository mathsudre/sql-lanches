-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

--SELECTS

-- 1)

SELECT 	
	pedi.*,	
	prod.*	
FROM 
	produtos_pedidos pp
JOIN
	pedidos pedi ON pp.pedido_id = pedi.id		
JOIN
	produtos prod ON pp.produto_id = prod.id;

-- 2)

SELECT 	
	pedi.id		
FROM 
	produtos_pedidos pp
JOIN
	pedidos pedi ON pp.pedido_id = pedi.id		
JOIN
	produtos prod ON pp.produto_id = prod.id
WHERE
	prod.nome = 'Fritas';


-- 3)

SELECT 	
	cli.nome gostam_de_fritas		
FROM 
	clientes cli
JOIN
	pedidos pedi ON cli.id = pedi.cliente_id
JOIN
	produtos_pedidos pp ON pp.pedido_id = pedi.id		
JOIN
	produtos prod ON pp.produto_id = prod.id
WHERE
	prod.nome = 'Fritas';


-- 4)

SELECT 
	SUM(prod.preço) preço_total 
FROM 
	produtos_pedidos pp 	
JOIN 
	produtos prod ON pp.produto_id = prod.id 
JOIN 
	pedidos pedi ON pp.pedido_id = pedi.id 
JOIN 
	clientes cli ON pedi.cliente_id = cli.id
WHERE 
	cli.nome = 'Laura';

-- 5)

SELECT 
	prod.nome, COUNT(*)
FROM 
	produtos prod
JOIN 
	produtos_pedidos pp ON prod.id = pp.produto_id
GROUP BY 
	prod.nome
ORDER BY 
	prod.nome ASC;