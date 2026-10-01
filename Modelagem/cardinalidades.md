# Cardinalidades 

## Relacionamentos

- Categoria (1) → Produto (N)
- Produto (1) → Estoque (1)
- Produto (1) → Movimentação de Estoque (N)
- Funcionário (1) → Movimentação de Estoque (N)
- Funcionário (1) → Venda (N)
- Venda (1) → Item da Venda (N)
- Produto (1) → Item da Venda (N)
- Venda (1) → Pagamento (N)
- Cliente (1) → Fiado (N)
- Fiado (1) → Item do Fiado (N)
- Produto (1) → Item do Fiado (N)
- Fiado (1) → Pagamento do Fiado (N)
- Fornecedor (1) → Compra (N)
- Funcionário (1) → Compra (N)
- Compra (1) → Item da Compra (N)
- Produto (1) → Item da Compra (N)





| Relacionamento                            | Cardinalidade |
| ----------------------------------------- | ------------- |
| **Categoria → Produto**                   | **1 : N**     |
| **Produto → Estoque**                     | **1 : 1**     |
| **Produto → Movimentação de Estoque**     | **1 : N**     |
| **Funcionário → Movimentação de Estoque** | **1 : N**     |
| **Funcionário → Venda**                   | **1 : N**     |
| **Venda → Item da Venda**                 | **1 : N**     |
| **Produto → Item da Venda**               | **1 : N**     |
| **Venda → Pagamento**                     | **1 : N**     |
| **Cliente → Fiado**                       | **1 : N**     |
| **Fiado → Item do Fiado**                 | **1 : N**     |
| **Produto → Item do Fiado**               | **1 : N**     |
| **Fiado → Pagamento do Fiado**            | **1 : N**     |
| **Fornecedor → Compra**                   | **1 : N**     |
| **Funcionário → Compra**                  | **1 : N**     |
| **Compra → Item da Compra**               | **1 : N**     |
| **Produto → Item da Compra**              | **1 : N**     |
