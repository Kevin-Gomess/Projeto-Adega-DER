1. Produto
Representa os produtos comercializados pela adega.

id_produto (PK)
nome
preco_venda
id_categoria (FK)


2. Categoria
Representa a classificação dos produtos comercializados.

id_categoria (PK)
nome


3. Estoque
Representa o controle da quantidade total disponível de cada produto e sua localização de referência.

id_estoque (PK)
id_produto (FK)
quantidade
localizacao

Cada produto possui um único registro de estoque, sem separar as quantidades da frente e dos fundos.


4. Movimentação de Estoque
Registra as movimentações realizadas no estoque, como entradas, saídas e ajustes.

id_movimentacao (PK)
id_produto (FK)
tipo_movimentacao
quantidade
motivo
data_movimentacao


5. Venda
Representa as vendas realizadas no estabelecimento.

id_venda (PK)
data_venda
valor_total
id_funcionario (FK)


6. Item da Venda
Registra os produtos que fazem parte de cada venda, incluindo suas quantidades e valores.

id_item_venda (PK)
id_venda (FK)
id_produto (FK)
quantidade
preco_unitario
subtotal


7. Pagamento
Registra os pagamentos recebidos pelas vendas realizadas.

id_pagamento (PK)
id_venda (FK)
forma_pagamento
valor_pago
data_pagamento

As formas de pagamento consideradas são Pix, dinheiro, crédito e débito. Uma mesma venda pode ter mais de um pagamento, permitindo a utilização de diferentes formas de pagamento na mesma operação.


8. Cliente
Representa os clientes que possuem cadastro para controle de compras fiadas.

id_cliente (PK)
nome
limite_fiado


9. Fiado
Representa os registros de compras fiadas realizadas pelos clientes.

id_fiado (PK)
id_cliente (FK)
data_fiado
valor_total
status


10. Item do Fiado
Registra individualmente os produtos retirados em cada compra fiada.

id_item_fiado (PK)
id_fiado (FK)
id_produto (FK)
quantidade
preco_unitario
subtotal


11. Compra
Representa as compras de mercadorias realizadas com os fornecedores.

id_compra (PK)
id_fornecedor (FK)
data_compra
valor_total


12. Item da Compra
Registra os produtos e suas respectivas quantidades e valores em cada compra realizada.

id_item_compra (PK)
id_compra (FK)
id_produto (FK)
quantidade
preco_unitario
subtotal


13. Funcionário
Representa os funcionários envolvidos nas atividades da adega.

id_funcionario (PK)
nome

14. Fornecedor
Representa os fornecedores responsáveis pelo fornecimento de mercadorias ao estabelecimento.

id_fornecedor (PK)
nome
contato
