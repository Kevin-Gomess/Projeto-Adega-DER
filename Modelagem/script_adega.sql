-- =====================================================================
-- Projeto Adega - script de criação do banco (MySQL 8.0)
-- Versão 1.0 - 23/10/2026
-- Convenções: tabelas e colunas em snake_case; prefixos id_, nm_, ds_, cd_,
-- nr_, vl_, qt_, dt_, hr_, fl_, st_, tp_ (ver Dicionario_de_dados.html, seção 3).
-- Gerado a partir do mesmo modelo do dicionário de dados e do DER.
-- Chaves estrangeiras sem ação em cascata: o MySQL aplica RESTRICT (impede excluir
-- registro que ainda é usado). Cadastros com histórico são inativados, não excluídos.
-- =====================================================================
CREATE DATABASE IF NOT EXISTS adega DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE adega;

CREATE TABLE categoria (
  id_categoria INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador da categoria',
  nm_categoria VARCHAR(60) NOT NULL COMMENT 'Nome da categoria',
  fl_restrita_maiores TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Indica se os produtos da categoria só podem ser vendidos a maiores de 18 anos',
  PRIMARY KEY (id_categoria),
  UNIQUE KEY uq_categoria_nm_categoria (nm_categoria)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Agrupa os produtos da adega e define se a venda é restrita a maiores de 18 anos.';

CREATE TABLE produto (
  id_produto INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do produto',
  id_categoria INT UNSIGNED NOT NULL COMMENT 'Categoria do produto',
  cd_barras VARCHAR(14) NULL COMMENT 'Código de barras (EAN-8, EAN-13 ou EAN-14) lido no balcão',
  nm_produto VARCHAR(100) NOT NULL COMMENT 'Nome comercial com a medida',
  vl_venda DECIMAL(10,2) NOT NULL COMMENT 'Preço de venda da unidade fechada',
  fl_vende_dose TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Indica se o produto também é vendido em doses',
  qt_ml_garrafa SMALLINT UNSIGNED NULL COMMENT 'Volume da garrafa em mililitros',
  qt_ml_dose SMALLINT UNSIGNED NULL COMMENT 'Volume de uma dose em mililitros',
  vl_dose DECIMAL(10,2) NULL COMMENT 'Preço de uma dose',
  fl_ativo TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'Indica se o produto está ativo para venda',
  PRIMARY KEY (id_produto),
  UNIQUE KEY uq_produto_cd_barras (cd_barras),
  KEY idx_produto_nm (nm_produto),
  CONSTRAINT fk_produto_id_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria),
  CONSTRAINT chk_produto_vl_venda CHECK (vl_venda >= 0),
  CONSTRAINT chk_produto_dose CHECK (fl_vende_dose = 0 OR (qt_ml_garrafa IS NOT NULL AND qt_ml_dose IS NOT NULL AND vl_dose IS NOT NULL AND qt_ml_dose <= qt_ml_garrafa))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Item comercializado: bebida, cigarro, petisco ou conveniência. Pode ser vendido fechado (unidade) ou em doses.';

CREATE TABLE estoque (
  id_estoque INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do registro de estoque',
  id_produto INT UNSIGNED NOT NULL COMMENT 'Produto controlado',
  qt_atual INT NOT NULL DEFAULT 0 COMMENT 'Quantidade atual em unidades',
  qt_minima INT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quantidade mínima antes de repor (ponto de reposição)',
  dt_atualizacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Data e hora da última alteração do saldo',
  PRIMARY KEY (id_estoque),
  UNIQUE KEY uq_estoque_id_produto (id_produto),
  CONSTRAINT fk_estoque_id_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
  CONSTRAINT chk_estoque_qt_atual CHECK (qt_atual >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Saldo atual de cada produto (relação 1:1 com PRODUTO). Só muda por meio de MOVIMENTACAO_ESTOQUE.';

CREATE TABLE funcionario (
  id_funcionario INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do funcionário',
  nm_funcionario VARCHAR(100) NOT NULL COMMENT 'Nome completo',
  nr_cpf CHAR(11) NOT NULL COMMENT 'CPF do funcionário (dado pessoal, LGPD)',
  tp_cargo ENUM('ATENDENTE','GERENTE') NOT NULL COMMENT 'Perfil de acesso no sistema',
  ds_login VARCHAR(40) NOT NULL COMMENT 'Nome de usuário para entrar no sistema',
  ds_senha_hash VARCHAR(255) NOT NULL COMMENT 'Hash da senha (bcrypt ou argon2)',
  dt_admissao DATE NOT NULL COMMENT 'Data de entrada na adega',
  fl_ativo TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'Indica se o funcionário ainda atua',
  PRIMARY KEY (id_funcionario),
  UNIQUE KEY uq_funcionario_nr_cpf (nr_cpf),
  UNIQUE KEY uq_funcionario_ds_login (ds_login)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Pessoa da equipe (3 a 4 funcionários) que usa o sistema. Perfis: atendente e gerente.';

CREATE TABLE escala (
  id_escala INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do turno',
  id_funcionario INT UNSIGNED NOT NULL COMMENT 'Funcionário escalado',
  dt_turno DATE NOT NULL COMMENT 'Dia do turno',
  hr_inicio TIME NOT NULL COMMENT 'Hora de início',
  hr_fim TIME NOT NULL COMMENT 'Hora de término',
  ds_funcao VARCHAR(40) NOT NULL COMMENT 'Função exercida no turno',
  PRIMARY KEY (id_escala),
  UNIQUE KEY uq_escala_turno (id_funcionario, dt_turno, hr_inicio),
  KEY idx_escala_dt (dt_turno),
  CONSTRAINT fk_escala_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario),
  CONSTRAINT chk_escala_horario CHECK (hr_fim <> hr_inicio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Turno de trabalho de um funcionário em um dia, com a função que ele exerce.';

CREATE TABLE cliente (
  id_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do cliente',
  nm_cliente VARCHAR(100) NOT NULL COMMENT 'Nome completo',
  nr_cpf CHAR(11) NOT NULL COMMENT 'CPF do cliente (dado pessoal, LGPD)',
  dt_nascimento DATE NOT NULL COMMENT 'Data de nascimento, para comprovar maioridade',
  nr_telefone VARCHAR(15) NOT NULL COMMENT 'Telefone com DDD, para cobrança',
  vl_limite_fiado DECIMAL(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Limite de saldo devedor autorizado',
  fl_bloqueado TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Indica se o cliente está impedido de comprar fiado',
  dt_consentimento_lgpd DATETIME NOT NULL COMMENT 'Momento em que o cliente consentiu o uso dos dados',
  dt_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do cadastro',
  PRIMARY KEY (id_cliente),
  UNIQUE KEY uq_cliente_nr_cpf (nr_cpf),
  KEY idx_cliente_nm (nm_cliente),
  CONSTRAINT chk_cliente_limite CHECK (vl_limite_fiado >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cliente cadastrado para comprar fiado. Reúne dados pessoais protegidos pela LGPD.';

CREATE TABLE caixa (
  id_caixa INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador da sessão de caixa',
  id_funcionario INT UNSIGNED NOT NULL COMMENT 'Funcionário responsável pelo caixa',
  dt_abertura DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora de abertura',
  dt_fechamento DATETIME NULL COMMENT 'Data e hora de fechamento',
  vl_troco_inicial DECIMAL(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Dinheiro de troco colocado na abertura',
  vl_esperado DECIMAL(10,2) NULL COMMENT 'Dinheiro que deveria estar na gaveta no fechamento',
  vl_contado DECIMAL(10,2) NULL COMMENT 'Dinheiro contado fisicamente no fechamento',
  vl_diferenca DECIMAL(10,2) AS (vl_contado - vl_esperado) STORED COMMENT 'Diferença entre o contado e o esperado',
  st_caixa ENUM('ABERTO','FECHADO') NOT NULL DEFAULT 'ABERTO' COMMENT 'Situação da sessão',
  ds_observacao VARCHAR(255) NULL COMMENT 'Justificativa da diferença e registro de sangrias',
  PRIMARY KEY (id_caixa),
  KEY idx_caixa_dt (dt_abertura),
  CONSTRAINT fk_caixa_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario),
  CONSTRAINT chk_caixa_fechamento CHECK ((st_caixa = 'ABERTO' AND dt_fechamento IS NULL) OR (st_caixa = 'FECHADO' AND dt_fechamento IS NOT NULL AND vl_contado IS NOT NULL))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Sessão de caixa, da abertura ao fechamento, com a conferência do dinheiro.';

CREATE TABLE venda (
  id_venda BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador da venda',
  id_funcionario INT UNSIGNED NOT NULL COMMENT 'Funcionário que realizou a venda',
  id_caixa INT UNSIGNED NOT NULL COMMENT 'Caixa aberto em que a venda foi feita',
  dt_venda DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora da venda',
  vl_desconto DECIMAL(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Desconto concedido na venda',
  vl_total DECIMAL(10,2) NOT NULL COMMENT 'Valor total cobrado',
  st_venda ENUM('CONCLUIDA','CANCELADA') NOT NULL DEFAULT 'CONCLUIDA' COMMENT 'Situação da venda',
  nr_documento_fiscal VARCHAR(44) NULL COMMENT 'Chave de acesso da NFC-e ou número do cupom fiscal',
  fl_maioridade_conferida TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Indica que o atendente conferiu a maioridade do comprador',
  PRIMARY KEY (id_venda),
  KEY idx_venda_dt (dt_venda),
  CONSTRAINT fk_venda_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario),
  CONSTRAINT fk_venda_id_caixa FOREIGN KEY (id_caixa) REFERENCES caixa (id_caixa),
  CONSTRAINT chk_venda_valores CHECK (vl_desconto >= 0 AND vl_total >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Venda feita no balcão, ligada ao funcionário e ao caixa aberto.';

CREATE TABLE fiado (
  id_fiado INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do fiado',
  id_cliente INT UNSIGNED NOT NULL COMMENT 'Cliente devedor',
  dt_abertura DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora de abertura da conta',
  dt_vencimento DATE NOT NULL COMMENT 'Data limite para pagamento',
  vl_total DECIMAL(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Total lançado na conta',
  vl_pago DECIMAL(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Total já pago',
  st_fiado ENUM('ABERTO','QUITADO') NOT NULL DEFAULT 'ABERTO' COMMENT 'Situação da conta',
  PRIMARY KEY (id_fiado),
  KEY idx_fiado_cliente_status (id_cliente, st_fiado),
  KEY idx_fiado_venc (dt_vencimento),
  CONSTRAINT fk_fiado_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
  CONSTRAINT chk_fiado_valores CHECK (vl_pago <= vl_total)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Conta de fiado aberta para um cliente, com prazo e saldo.';

CREATE TABLE item_venda (
  id_item_venda BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do item da venda',
  id_venda BIGINT UNSIGNED NOT NULL COMMENT 'Venda a que o item pertence',
  id_produto INT UNSIGNED NOT NULL COMMENT 'Produto vendido',
  tp_item ENUM('UNIDADE','DOSE') NOT NULL DEFAULT 'UNIDADE' COMMENT 'Indica se foi vendida a unidade fechada ou uma dose',
  qt_item SMALLINT UNSIGNED NOT NULL COMMENT 'Quantidade vendida',
  vl_unitario DECIMAL(10,2) NOT NULL COMMENT 'Preço unitário no momento da venda',
  vl_subtotal DECIMAL(12,2) AS (qt_item * vl_unitario) STORED COMMENT 'Valor do item',
  PRIMARY KEY (id_item_venda),
  CONSTRAINT fk_item_venda_id_venda FOREIGN KEY (id_venda) REFERENCES venda (id_venda),
  CONSTRAINT fk_item_venda_id_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
  CONSTRAINT chk_item_venda_qt CHECK (qt_item > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Produto vendido em uma venda, com quantidade e preço do momento.';

CREATE TABLE pagamento (
  id_pagamento BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do pagamento',
  id_venda BIGINT UNSIGNED NOT NULL COMMENT 'Venda paga',
  id_fiado INT UNSIGNED NULL COMMENT 'Fiado em que a venda foi lançada',
  tp_forma ENUM('DINHEIRO','PIX','DEBITO','CREDITO','FIADO') NOT NULL COMMENT 'Forma de pagamento',
  vl_pago DECIMAL(10,2) NOT NULL COMMENT 'Valor pago nesta forma',
  dt_pagamento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do pagamento',
  PRIMARY KEY (id_pagamento),
  KEY idx_pagamento_forma (tp_forma, dt_pagamento),
  CONSTRAINT fk_pagamento_id_venda FOREIGN KEY (id_venda) REFERENCES venda (id_venda),
  CONSTRAINT fk_pagamento_id_fiado FOREIGN KEY (id_fiado) REFERENCES fiado (id_fiado),
  CONSTRAINT chk_pagamento_valor CHECK (vl_pago > 0),
  CONSTRAINT chk_pagamento_fiado CHECK ((tp_forma = 'FIADO' AND id_fiado IS NOT NULL) OR (tp_forma <> 'FIADO' AND id_fiado IS NULL))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Forma de pagamento de uma venda. Uma venda pode ter vários pagamentos (pagamento dividido).';

CREATE TABLE item_fiado (
  id_item_fiado BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do item do fiado',
  id_fiado INT UNSIGNED NOT NULL COMMENT 'Fiado a que o item pertence',
  id_produto INT UNSIGNED NOT NULL COMMENT 'Produto lançado',
  tp_item ENUM('UNIDADE','DOSE') NOT NULL DEFAULT 'UNIDADE' COMMENT 'Unidade fechada ou dose',
  qt_item SMALLINT UNSIGNED NOT NULL COMMENT 'Quantidade lançada',
  vl_unitario DECIMAL(10,2) NOT NULL COMMENT 'Preço unitário no momento do lançamento',
  vl_subtotal DECIMAL(12,2) AS (qt_item * vl_unitario) STORED COMMENT 'Valor do item',
  dt_lancamento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do lançamento',
  PRIMARY KEY (id_item_fiado),
  CONSTRAINT fk_item_fiado_id_fiado FOREIGN KEY (id_fiado) REFERENCES fiado (id_fiado),
  CONSTRAINT fk_item_fiado_id_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
  CONSTRAINT chk_item_fiado_qt CHECK (qt_item > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Produto lançado em um fiado, com quantidade e preço do momento.';

CREATE TABLE pagamento_fiado (
  id_pagamento_fiado BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do pagamento do fiado',
  id_fiado INT UNSIGNED NOT NULL COMMENT 'Fiado abatido',
  id_caixa INT UNSIGNED NOT NULL COMMENT 'Caixa que recebeu o valor',
  tp_forma ENUM('DINHEIRO','PIX','DEBITO','CREDITO') NOT NULL COMMENT 'Forma usada para quitar',
  vl_pago DECIMAL(10,2) NOT NULL COMMENT 'Valor recebido',
  dt_pagamento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do recebimento',
  PRIMARY KEY (id_pagamento_fiado),
  CONSTRAINT fk_pagamento_fiado_id_fiado FOREIGN KEY (id_fiado) REFERENCES fiado (id_fiado),
  CONSTRAINT fk_pagamento_fiado_id_caixa FOREIGN KEY (id_caixa) REFERENCES caixa (id_caixa),
  CONSTRAINT chk_pagamento_fiado_valor CHECK (vl_pago > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Pagamento (total ou parcial) recebido para abater um fiado.';

CREATE TABLE fornecedor (
  id_fornecedor INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do fornecedor',
  nm_fornecedor VARCHAR(100) NOT NULL COMMENT 'Razão social ou nome fantasia',
  nr_cnpj CHAR(14) NOT NULL COMMENT 'CNPJ do fornecedor',
  nr_telefone VARCHAR(15) NULL COMMENT 'Telefone de contato com DDD',
  tp_fornecimento ENUM('ENTREGA','RETIRADA','AMBOS') NOT NULL COMMENT 'Como o fornecedor costuma atender',
  fl_ativo TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'Indica se o fornecedor está ativo',
  PRIMARY KEY (id_fornecedor),
  UNIQUE KEY uq_fornecedor_nr_cnpj (nr_cnpj)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Empresa que vende mercadoria para a adega, com entrega ou retirada.';

CREATE TABLE compra (
  id_compra INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador da compra',
  id_fornecedor INT UNSIGNED NOT NULL COMMENT 'Fornecedor do pedido',
  id_funcionario INT UNSIGNED NOT NULL COMMENT 'Funcionário que fez a compra',
  dt_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do pedido',
  dt_recebimento DATETIME NULL COMMENT 'Data e hora do recebimento',
  tp_recebimento ENUM('ENTREGA','RETIRADA') NOT NULL COMMENT 'Como a mercadoria chegou',
  nr_nota_fiscal VARCHAR(44) NULL COMMENT 'Número ou chave da nota fiscal do fornecedor',
  vl_total DECIMAL(12,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor total do pedido',
  st_compra ENUM('PEDIDO','RECEBIDA','RECEBIDA_PARCIAL','CANCELADA') NOT NULL DEFAULT 'PEDIDO' COMMENT 'Situação da compra',
  PRIMARY KEY (id_compra),
  KEY idx_compra_dt (dt_pedido),
  CONSTRAINT fk_compra_id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id_fornecedor),
  CONSTRAINT fk_compra_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Pedido de compra feito a um fornecedor por um funcionário.';

CREATE TABLE item_compra (
  id_item_compra INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do item da compra',
  id_compra INT UNSIGNED NOT NULL COMMENT 'Compra a que o item pertence',
  id_produto INT UNSIGNED NOT NULL COMMENT 'Produto pedido',
  qt_pedida INT UNSIGNED NOT NULL COMMENT 'Quantidade pedida ao fornecedor',
  qt_recebida INT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quantidade realmente recebida',
  vl_custo DECIMAL(10,2) NOT NULL COMMENT 'Custo unitário pago ao fornecedor',
  fl_conferido TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Indica que o item foi conferido no recebimento',
  ds_divergencia VARCHAR(200) NULL COMMENT 'Descrição de erro, falta ou avaria',
  PRIMARY KEY (id_item_compra),
  UNIQUE KEY uq_item_compra_produto (id_compra, id_produto),
  CONSTRAINT fk_item_compra_id_compra FOREIGN KEY (id_compra) REFERENCES compra (id_compra),
  CONSTRAINT fk_item_compra_id_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
  CONSTRAINT chk_item_compra_qt CHECK (qt_pedida > 0 AND qt_recebida <= qt_pedida),
  CONSTRAINT chk_item_compra_custo CHECK (vl_custo >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Produto pedido em uma compra, com quantidade pedida, recebida e conferência.';

CREATE TABLE lote (
  id_lote INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do lote',
  id_item_compra INT UNSIGNED NOT NULL COMMENT 'Item de compra que originou o lote',
  nr_lote VARCHAR(30) NULL COMMENT 'Número do lote impresso na embalagem',
  dt_validade DATE NOT NULL COMMENT 'Data de validade do lote',
  qt_disponivel INT UNSIGNED NOT NULL COMMENT 'Quantidade ainda disponível no lote',
  PRIMARY KEY (id_lote),
  UNIQUE KEY uq_lote_id_item_compra (id_item_compra),
  KEY idx_lote_validade (dt_validade),
  CONSTRAINT fk_lote_id_item_compra FOREIGN KEY (id_item_compra) REFERENCES item_compra (id_item_compra)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Lote recebido de produto com validade. Permite controlar vencimento e vender primeiro o que vence antes.';

CREATE TABLE movimentacao_estoque (
  id_movimentacao BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador da movimentação',
  id_produto INT UNSIGNED NOT NULL COMMENT 'Produto movimentado',
  id_funcionario INT UNSIGNED NOT NULL COMMENT 'Funcionário que registrou',
  id_lote INT UNSIGNED NULL COMMENT 'Lote atingido, quando houver',
  tp_movimento ENUM('ENTRADA_COMPRA','SAIDA_VENDA','SAIDA_DOSE','PERDA','DEVOLUCAO_FORNECEDOR','AJUSTE_ENTRADA','AJUSTE_SAIDA') NOT NULL COMMENT 'Tipo da movimentação',
  qt_movimentada INT UNSIGNED NOT NULL COMMENT 'Quantidade movimentada, sempre positiva',
  ds_motivo VARCHAR(200) NULL COMMENT 'Motivo da movimentação',
  dt_movimentacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora da movimentação',
  PRIMARY KEY (id_movimentacao),
  KEY idx_mov_produto_dt (id_produto, dt_movimentacao),
  CONSTRAINT fk_movimentacao_estoque_id_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
  CONSTRAINT fk_movimentacao_estoque_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario),
  CONSTRAINT fk_movimentacao_estoque_id_lote FOREIGN KEY (id_lote) REFERENCES lote (id_lote),
  CONSTRAINT chk_mov_qt CHECK (qt_movimentada > 0),
  CONSTRAINT chk_mov_motivo CHECK (tp_movimento NOT IN ('PERDA','AJUSTE_ENTRADA','AJUSTE_SAIDA') OR ds_motivo IS NOT NULL)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Histórico de toda entrada e saída de estoque. Não pode ser alterado nem excluído.';

CREATE TABLE log_acesso (
  id_log BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador do registro de log',
  id_funcionario INT UNSIGNED NULL COMMENT 'Funcionário que gerou o evento',
  dt_evento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do evento',
  tp_evento ENUM('LOGIN','LOGIN_FALHA','INSERT','UPDATE','DELETE','CONSULTA_DADO_PESSOAL','APROVACAO') NOT NULL COMMENT 'Tipo do evento registrado',
  nm_tabela VARCHAR(40) NULL COMMENT 'Tabela atingida',
  id_registro VARCHAR(40) NULL COMMENT 'Identificador do registro atingido',
  ds_alteracao JSON NULL COMMENT 'Valores antes e depois da alteração',
  ds_ip VARCHAR(45) NULL COMMENT 'Endereço IP de origem',
  PRIMARY KEY (id_log),
  KEY idx_log_dt (dt_evento),
  KEY idx_log_tabela (nm_tabela, id_registro),
  CONSTRAINT fk_log_acesso_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de apoio (fora do DER conceitual) que registra quem fez o quê no sistema, para auditoria e LGPD.';

-- ---------------------------------------------------------------------
-- Dados iniciais de exemplo (categorias)
-- ---------------------------------------------------------------------
INSERT INTO categoria (nm_categoria, fl_restrita_maiores) VALUES
  ('Cerveja', 1),
  ('Destilado', 1),
  ('Vinho', 1),
  ('Tabaco', 1),
  ('Refrigerante e agua', 0),
  ('Petisco e conveniencia', 0);
