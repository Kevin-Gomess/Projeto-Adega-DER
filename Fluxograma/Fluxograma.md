 Processos e Fluxogramas

### 1. Processo de Venda 

**Fluxo da venda atual:**

Cliente escolhe os produtos
↓
Funcionário verifica os preços
↓
Calcula o valor da compra
↓
Cliente escolhe a forma de pagamento
↓
Pagamento por Pix, cartão, dinheiro ou fiado
↓
Funcionário confere o pagamento ou registra o valor devido no caso de fiado
↓
Venda concluída

**Observação:** Atualmente, não existe registro dos produtos vendidos no momento da venda. No caso das compras realizadas por fiado, são registrados os produtos retirados e o valor devido pelo cliente. A falta de um registro completo das vendas é um dos problemas que o futuro sistema deverá solucionar.

### 2. Processo de Compra de Mercadorias 

**Fluxo da compra atual:**

Produto está acabando ou acabou
↓
Funcionário identifica a necessidade de reposição
↓
Anota os produtos e as quantidades necessárias
↓
Proprietário realiza o pedido ou a compra
↓
Fornecedor entrega as mercadorias ou os produtos são retirados diretamente no estabelecimento do fornecedor
↓
Mercadorias chegam à adega
↓
Produtos e quantidades são conferidos individualmente
↓
**Mercadoria está correta e completa?**

Sim → Produtos são colocados no estoque e organizados conforme o tipo.

Não → Funcionário entra em contato com o fornecedor → Fornecedor realiza a troca ou complementa a entrega → Mercadorias são conferidas novamente.

### 3. Processo de Controle de Estoque

**Fluxo do estoque atual:**

Produto entra na adega
↓
Produto é conferido
↓
Produto é armazenado e organizado
↓
Produto fica disponível para venda ou utilização
↓
Pode ocorrer uma movimentação de saída:

- Venda de produto
- Garrafa aberta para preparação de doses
- Produto quebrado
- Produto vencido ou perdido

↓
Quantidade disponível é reduzida conforme a saída
↓
Funcionário realiza conferência manual do estoque
↓
Identifica produtos acabando, faltando ou com diferenças de quantidade
↓
Anota as necessidades no caderno ou celular
↓
Necessidade de compra ou ajuste é identificada

### 4. Proposta de Controle de Estoque para o Futuro Sistema 

No sistema proposto, o controle de estoque será realizado por meio do registro das movimentações dos produtos.

**Estrutura conceitual:**

Produto → Estoque → Movimentação de Estoque

A movimentação de estoque poderá registrar as seguintes operações:

| Situação | Tipo de movimentação |
|---|---|
| Mercadoria recebida de fornecedor | Entrada |
| Produto vendido | Saída |
| Garrafa aberta para preparação de doses | Saída |
| Produto quebrado | Saída |
| Produto vencido ou perdido | Saída |
| Correção após conferência do estoque | Ajuste |

Cada movimentação deverá identificar o produto, a quantidade movimentada, a data, o tipo de movimentação e o funcionário responsável, permitindo acompanhar as alterações do estoque.
