# Entidades do Modelo Conceitual

O modelo conceitual da Adega do Tonho é composto por 15 entidades, definidas a partir das informações levantadas na pesquisa de campo.

## 1. Produto
Representa os produtos comercializados pela adega.

**Atributos:**
- id_produto (PK)
- nome
- preco_venda
- id_categoria (FK)

## 2. Categoria
Representa as categorias utilizadas para organizar os produtos.

**Atributos:**
- id_categoria (PK)
- nome

## 3. Estoque
Representa o estoque disponível de cada produto.

**Atributos:**
- id_estoque (PK)
- id_produto (FK)
- quantidade
- localizacao

## 4. Movimentação de Estoque
Registra as entradas, saídas e ajustes realizados no estoque.

**Atributos:**
- id_movimentacao (PK)
- id_produto (FK)
- id_funcionario (FK)
- tipo_movimentacao
- quantidade
- motivo
- data_movimentacao

## 5. Venda
Representa uma venda realizada na adega.

**Atributos:**
- id_venda (PK)
- data_venda
- valor_total
- id_funcionario (FK)

## 6. Item da Venda
Representa cada produto incluído em uma venda.

**Atributos:**
- id_item_venda (PK)
- id_venda (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 7. Pagamento
Registra os pagamentos realizados nas vendas.

**Atributos:**
- id_pagamento (PK)
- id_venda (FK)
- forma_pagamento
- valor_pago
- data_pagamento

**Formas de pagamento:** Pix, dinheiro, crédito e débito.

## 8. Cliente
Representa os clientes que possuem cadastro para utilização do fiado.

**Atributos:**
- id_cliente (PK)
- nome
- limite_fiado

## 9. Fiado
Representa uma compra realizada pelo cliente para pagamento posterior.

**Atributos:**
- id_fiado (PK)
- id_cliente (FK)
- data_fiado
- valor_total
- status

## 10. Item do Fiado
Representa cada produto incluído em uma compra realizada no fiado.

**Atributos:**
- id_item_fiado (PK)
- id_fiado (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 11. Pagamento do Fiado
Registra os pagamentos realizados para quitar valores de compras no fiado.

**Atributos:**
- id_pagamento_fiado (PK)
- id_fiado (FK)
- valor_pago
- data_pagamento

## 12. Compra
Representa uma compra de produtos realizada pela adega junto a um fornecedor.

**Atributos:**
- id_compra (PK)
- id_fornecedor (FK)
- id_funcionario (FK)
- data_compra
- valor_total

## 13. Item da Compra
Representa cada produto incluído em uma compra realizada com um fornecedor.

**Atributos:**
- id_item_compra (PK)
- id_compra (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 14. Funcionário
Representa os funcionários responsáveis pelas operações da adega.

**Atributos:**
- id_funcionario (PK)
- nome

## 15. Fornecedor
Representa as empresas ou pessoas que fornecem produtos para a adega.

**Atributos:**
- id_fornecedor (PK)
- nome
- contato
