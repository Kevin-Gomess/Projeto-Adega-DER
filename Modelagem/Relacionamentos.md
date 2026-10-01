# Relacionamentos

Os relacionamentos foram definidos de acordo com as entidades e atributos apresentados no modelo da Adega do Tonho.

## Produto e Categoria

**Categoria (1) → possui → (N) Produto**

Uma categoria pode possuir vários produtos, enquanto cada produto pertence a uma categoria.

---

## Produto e Estoque

**Produto (1) → possui → (1) Estoque**

Cada produto possui um registro de estoque, considerando o controle da quantidade total do produto.

---

## Produto e Movimentação de Estoque

**Produto (1) → gera → (N) Movimentação de Estoque**

Um produto pode possuir várias movimentações de estoque ao longo do tempo.

---

## Funcionário e Movimentação de Estoque

**Funcionário (1) → realiza → (N) Movimentação de Estoque**

Um funcionário pode realizar várias movimentações de estoque.

---

## Funcionário e Venda

**Funcionário (1) → realiza → (N) Venda**

Um funcionário pode realizar várias vendas.

---

## Venda e Item da Venda

**Venda (1) → possui → (N) Item da Venda**

Uma venda pode possuir vários itens, enquanto cada item da venda pertence a uma única venda.

---

## Produto e Item da Venda

**Produto (1) → compõe → (N) Item da Venda**

Um produto pode aparecer em vários itens de venda.

---

## Venda e Pagamento

**Venda (1) → possui → (N) Pagamento**

Uma venda pode possuir um ou mais pagamentos, permitindo também a divisão do pagamento entre diferentes formas.

As formas de pagamento consideradas são:

- Pix
- Dinheiro
- Crédito
- Débito

---

## Cliente e Fiado

**Cliente (1) → possui → (N) Fiado**

Um cliente pode possuir vários registros de fiado ao longo do tempo.

---

## Fiado e Item do Fiado

**Fiado (1) → possui → (N) Item do Fiado**

Um registro de fiado pode possuir vários itens.

---

## Produto e Item do Fiado

**Produto (1) → compõe → (N) Item do Fiado**

Um produto pode aparecer em vários registros de itens de fiado, enquanto cada item de fiado se refere a um único produto.

---

## Fiado e Pagamento do Fiado

**Fiado (1) → possui → (N) Pagamento do Fiado**

Um registro de fiado pode receber vários pagamentos ao longo do tempo.

---

## Fornecedor e Compra

**Fornecedor (1) → fornece → (N) Compra**

Um fornecedor pode estar relacionado a várias compras.

---

## Funcionário e Compra

**Funcionário (1) → realiza → (N) Compra**

Um funcionário pode realizar várias compras.

---

## Compra e Item da Compra

**Compra (1) → possui → (N) Item da Compra**

Uma compra pode possuir vários itens.

---

## Produto e Item da Compra

**Produto (1) → compõe → (N) Item da Compra**

Um produto pode aparecer em vários itens de compra.

---

## Resumo das Cardinalidades

| Relacionamento | Cardinalidade |
|---|---|
| Categoria → Produto | 1:N |
| Produto → Estoque | 1:1 |
| Produto → Movimentação de Estoque | 1:N |
| Funcionário → Movimentação de Estoque | 1:N |
| Funcionário → Venda | 1:N |
| Venda → Item da Venda | 1:N |
| Produto → Item da Venda | 1:N |
| Venda → Pagamento | 1:N |
| Cliente → Fiado | 1:N |
| Fiado → Item do Fiado | 1:N |
| Produto → Item do Fiado | 1:N |
| Fiado → Pagamento do Fiado | 1:N |
| Fornecedor → Compra | 1:N |
| Funcionário → Compra | 1:N |
| Compra → Item da Compra | 1:N |
| Produto → Item da Compra | 1:N |


 <img width="3448" height="1848" alt="mermaid-diagram" src="https://github.com/user-attachments/assets/f3e0b550-36cc-4a77-a34a-d92d6ebe6e4e" />
