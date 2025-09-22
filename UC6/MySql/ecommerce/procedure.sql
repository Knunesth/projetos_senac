USE ecommerce;
-- 1 criando procedure para listar produtos por categoria
DEMILITER //

CREATE PROCEDURE listarProdutos_por_categoria(IN categoria_id_param INT)
BEGIN
	SELECT p.nome, p.preco, p.estoque, c.nome as categoria
    FROM produto as p
    JOIN categorias as C on p.categoria_id = c.id
	WHERE p.categoria_id = categoria_id_param;

END //

DEMILITER;