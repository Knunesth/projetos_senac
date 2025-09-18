ALTER TABLE clientes 
ADD COLUMN data_nascimento DATE;

ALTER TABLE clientes 
MODIFY telefone VARCHAR(20);

ALTER TABLE pedidos
ADD CONSTRAINT fk_cliente
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id);
