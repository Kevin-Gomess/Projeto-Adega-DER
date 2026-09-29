







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
