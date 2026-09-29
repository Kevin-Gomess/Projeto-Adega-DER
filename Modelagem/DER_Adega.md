
Com certeza! Aqui está a documentação lógica completa do Dicionário de Dados para todas as entidades do seu diagrama corrigido.
Esta documentação utiliza os tipos de dados ideais para bancos de dados relacionais (como PostgreSQL, MySQL ou SQL Server), garantindo o uso correto de chaves primárias (PK), chaves estrangeiras (FK) e valores monetários precisos (DECIMAL).
------------------------------
## 1. Entidade: CATEGORIA

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_categoria | INT / SERIAL | PK (Primary Key) | Identificador exclusivo da categoria. |
| nome | VARCHAR(100) | NOT NULL | Nome da categoria (ex: Cervejas, Vinhos). |

## 2. Entidade: PRODUTO

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_produto | INT / SERIAL | PK (Primary Key) | Identificador exclusivo do produto. |
| nome | VARCHAR(150) | NOT NULL | Nome comercial do produto. |
| preco_venda | DECIMAL(10,2) | NOT NULL | Preço cobrado na venda ao consumidor. |
| id_categoria | INT | FK (Foreign Key) | Vinculado à tabela CATEGORIA. |

## 3. Entidade: ESTOQUE

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_stock ou id_estoque | INT / SERIAL | PK (Primary Key) | Identificador do registro de controle. |
| id_produto | INT | FK (Foreign Key) | Vinculado à tabela PRODUTO. |
| quantidade | INT / DECIMAL(10,2) | NOT NULL | Saldo atual disponível (líquido ou caixas). |
| localizacao | VARCHAR(100) | Mínimo padrão | Corredor, prateleira ou área física na adega. |

## 4. Entidade: MOVIMENTACAO_ESTOQUE (Corrigido)

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_movimentacao | INT / SERIAL | PK (Primary Key) | Código da auditoria do movimento. |
| id_produto | INT | FK (Foreign Key) | Vinculado à tabela PRODUTO. |
| id_funcionario | INT | FK (Foreign Key) | [Novo] Funcionário que fez a movimentação. |
| tipo_movimentacao | VARCHAR(10) | NOT NULL (Entrada/Saída) | Tipo lógico do fluxo físico. |
| quantidade | INT / DECIMAL(10,2) | NOT NULL | Volume afetado na transação. |
| motivo | VARCHAR(150) | NOT NULL | Ex: "Venda", "Quebra", "Vencimento". |
| data_movimentacao | TIMESTAMP / DATETIME | DEFAULT CURRENT_TIMESTAMP | Data e hora exatas da operação. |

## 5. Entidade: FUNCIONARIO

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_funcionario | INT / SERIAL | PK (Primary Key) | Identificador exclusivo do colaborador. |
| nome | VARCHAR(150) | NOT NULL | Nome completo do funcionário. |

## 6. Entidade: VENDA

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_venda | INT / SERIAL | PK (Primary Key) | Identificador exclusivo da transação. |
| data_venda | TIMESTAMP / DATETIME | NOT NULL | Data e momento da realização da venda. |
| valor_total | DECIMAL(10,2) | NOT NULL | Somatório final pago pelo comprador. |
| id_funcionario | INT | FK (Foreign Key) | Vendedor responsável pelo atendimento. |

## 7. Entidade: ITEM_VENDA

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_item_venda | INT / SERIAL | PK (Primary Key) | Registro do item individual no cupom. |
| id_venda | INT | FK (Foreign Key) | Vinculado à tabela VENDA. |
| id_produto | INT | FK (Foreign Key) | Vinculado à tabela PRODUTO. |
| quantidade | INT / DECIMAL(10,2) | NOT NULL | Quantidade do mesmo item levada. |
| preco_unitario | DECIMAL(10,2) | NOT NULL | Valor unitário praticado naquele momento. |
| subtotal | DECIMAL(10,2) | NOT NULL | Calculado automaticamente (quantidade * preco). |

## 8. Entidade: PAGAMENTO

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_pagamento | INT / SERIAL | PK (Primary Key) | Identificador do pagamento da venda. |
| id_venda | INT | FK (Foreign Key) | Vinculado à tabela VENDA. |
| forma_pagamento | VARCHAR(50) | NOT NULL | Ex: "Pix", "Crédito", "Dinheiro". |
| valor_pago | DECIMAL(10,2) | NOT NULL | Valor aportado pelo cliente nesta forma. |
| data_pagamento | TIMESTAMP / DATETIME | NOT NULL | Registro temporal da baixa financeira. |

## 9. Entidade: CLIENTE

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_cliente | INT / SERIAL | PK (Primary Key) | Identificador exclusivo do cliente. |
| nome | VARCHAR(150) | NOT NULL | Nome completo cadastrado. |
| limite_fiado | DECIMAL(10,2) | NOT NULL | Teto máximo autorizado de crédito parcelado. |

## 10. Entidade: FIADO

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_fiado | INT / SERIAL | PK (Primary Key) | Identificador da conta/caderneta de fiado. |
| id_cliente | INT | FK (Foreign Key) | Vinculado à tabela CLIENTE. |
| data_fiado | TIMESTAMP / DATETIME | NOT NULL | Abertura ou lançamento do débito pendente. |
| valor_total | DECIMAL(10,2) | NOT NULL | Saldo devedor total acumulado original. |
| status | VARCHAR(20) | NOT NULL (Aberto/Pago) | Estado da dívida no sistema. |

## 11. Entidade: ITEM_FIADO

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_item_fiado | INT / SERIAL | PK (Primary Key) | Registro do produto individual no fiado. |
| id_fiado | INT | FK (Foreign Key) | Vinculado à tabela FIADO. |
| id_produto | INT | FK (Foreign Key) | Vinculado à tabela PRODUTO. |
| quantidade | INT / DECIMAL(10,2) | NOT NULL | Quantidade de itens adquirida sem pagar. |
| preco_unitario | DECIMAL(10,2) | NOT NULL | Preço praticado no ato do fiado. |
| subtotal | DECIMAL(10,2) | NOT NULL | Equivalente a quantidade * preco_unitario. |

## 12. Entidade: PAGAMENTO_FIADO (Nova)

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_pagamento_fiado | INT / SERIAL | PK (Primary Key) | [Novo] Identificador da amortização. |
| id_fiado | INT | FK (Foreign Key) | [Novo] Vinculado à conta de FIADO. |
| valor_pago | DECIMAL(10,2) | NOT NULL | [Novo] Valor que o cliente entregou para abater. |
| data_pagamento | TIMESTAMP / DATETIME | NOT NULL | [Novo] Data em que o pagamento foi realizado. |

## 13. Entidade: COMPRA (Corrigido)

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_compra | INT / SERIAL | PK (Primary Key) | Identificador exclusivo do pedido de reposição. |
| id_fornecedor | INT | FK (Foreign Key) | Vinculado à tabela FORNECEDOR. |
| id_funcionario | INT | FK (Foreign Key) | [Novo] Comprador responsável pelo pedido. |
| data_compra | TIMESTAMP / DATETIME | NOT NULL | Data da formalização da compra. |
| valor_total | DECIMAL(10,2) | NOT NULL | Investimento total aplicado no lote de itens. |

## 14. Entidade: ITEM_COMPRA

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_item_compra | INT / SERIAL | PK (Primary Key) | Identificador da linha de item do lote comprado. |
| id_compra | INT | FK (Foreign Key) | Vinculado à tabela COMPRA. |
| id_produto | INT | FK (Foreign Key) | Vinculado à tabela PRODUTO. |
| quantidade | INT / DECIMAL(10,2) | NOT NULL | Quantidade de caixas/itens trazida. |
| preco_unitario | DECIMAL(10,2) | NOT NULL | Custo de aquisição de cada unidade de item. |
| subtotal | DECIMAL(10,2) | NOT NULL | Multiplicação de custo unitário por volume comprado. |

## 15. Entidade: FORNECEDOR

| Campo | Tipo de Dado | Restrição / Chave | Descrição |
|---|---|---|---|
| id_fornecedor | INT / SERIAL | PK (Primary Key) | Identificador do distribuidor ou fábrica parceira. |
| nome | VARCHAR(150) | NOT NULL | Razão social ou nome fantasia do fornecedor. |
| contato | VARCHAR(100) | Opcional / Padrão | Telefone, WhatsApp ou e-mail corporativo. |

------------------------------
Com essa documentação detalhada, o seu trabalho acadêmico ou técnico já cumpre os requisitos de modelagem lógica! Se você quiser dar o último passo antes de finalizar, me diga:

* Você quer o script gerador em código SQL (CREATE TABLE) pronto para rodar em qual banco? (PostgreSQL, MySQL ou outro)?
* Deseja que eu explique como calcular a fórmula da regra RN09 (Limite dinâmico do Fiado) em cima dessas tabelas?









CATEGORIA {
        int id_categoria PK
        string nome
    }

    PRODUTO {
        int id_produto PK
        string nome
        decimal preco_venda
        int id_categoria FK
    }

    ESTOQUE {
        int id_estoque PK
        int id_produto FK
        int quantidade
        string localizacao
    }

    MOVIMENTACAO_ESTOQUE {
        int id_movimentacao PK
        int id_produto FK
        string tipo_movimentacao
        int quantidade
        string motivo
        date data_movimentacao
    }

    VENDA {
        int id_venda PK
        date data_venda
        decimal valor_total
        int id_funcionario FK
    }

    ITEM_VENDA {
        int id_item_venda PK
        int id_venda FK
        int id_produto FK
        int quantidade
        decimal preco_unitario
        decimal subtotal
    }

    PAGAMENTO {
        int id_pagamento PK
        int id_venda FK
        string forma_pagamento
        decimal valor_pago
        date data_pagamento
    }

    CLIENTE {
        int id_cliente PK
        string nome
        decimal limite_fiado
    }

    FIADO {
        int id_fiado PK
        int id_cliente FK
        date data_fiado
        decimal valor_total
        string status
    }

    ITEM_FIADO {
        int id_item_fiado PK
        int id_fiado FK
        int id_produto FK
        int quantidade
        decimal preco_unitario
        decimal subtotal
    }

    COMPRA {
        int id_compra PK
        int id_fornecedor FK
        date data_compra
        decimal valor_total
    }

    ITEM_COMPRA {
        int id_item_compra PK
        int id_compra FK
        int id_produto FK
        int quantidade
        decimal preco_unitario
        decimal subtotal
    }

    FUNCIONARIO {
        int id_funcionario PK
        string nome
    }

    FORNECEDOR {
        int id_fornecedor PK
        string nome
        string contato
    }
