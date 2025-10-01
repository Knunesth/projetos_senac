CREATE VIEW vw_logistica_entrega AS
SELECT 
    p.id AS pedido_id,
    u.nome AS cliente,
    e.rua,
    e.numero,
    e.bairro,
    e.cidade,
    e.estado,
    e.cep,
    p.data_pedido,
    p.status,
    p.total
FROM pedidos p
JOIN usuarios u ON p.cliente_id = u.id
JOIN enderecos e ON e.cliente_id = u.id;
