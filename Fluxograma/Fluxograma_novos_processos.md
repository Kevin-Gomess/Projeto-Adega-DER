# Fluxogramas — processos que faltavam

Versão 1.0, 23/10/2026. Estes cinco processos **complementam** o arquivo `Fluxograma/Fluxograma.md` (que já tem os 10 primeiros). Cole o conteúdo no fim dele ou deixe como arquivo separado e cite no README.

Os diagramas são Mermaid: o GitHub desenha sozinho. Para exportar em imagem, cole o bloco em https://mermaid.live.

| # | Processo | Grupo | Regras | Entidades |
|---|---|---|---|---|
| 11 | Fechamento de caixa | Apoio | RN01, RN22, RN23, RN24 | CAIXA, VENDA, PAGAMENTO, PAGAMENTO_FIADO |
| 12 | Cobrança e quitação do fiado | Vendas | RN12, RN13 | FIADO, PAGAMENTO_FIADO, CLIENTE, CAIXA |
| 13 | Controle de validade | Apoio | RN17, RN15 | LOTE, MOVIMENTACAO_ESTOQUE |
| 14 | Perdas e quebras | Apoio | RN14, RN15 | MOVIMENTACAO_ESTOQUE, ESTOQUE, LOTE, LOG_ACESSO |
| 15 | Escala dos funcionários | Apoio | RN25 | ESCALA, FUNCIONARIO |

16 de 16 processos


reefaça , coloque a abertura do caixa

---

## 10. Abertura de caixa

**Quem participa:** funcionário responsável pelo caixa. O sistema verifica se já existe outro caixa aberto e registra o valor inicial em dinheiro.

```mermaid
flowchart TD
    A([Início do turno]) --> B[Funcionário informa o troco inicial]
    B --> C{Já existe outro caixa aberto?}
    C -- Sim --> D[Sistema bloqueia a abertura]
    C -- Não --> E[Sistema registra a abertura com data, hora e responsável]
    E --> F[Caixa fica ABERTO]
    F --> G[Funcionário realiza vendas e recebe pagamentos de fiado]
    G --> H{Fim do turno?}
    H -- Não --> G
    H -- Sim --> I[Funcionário inicia o fechamento do caixa]
    I --> J([Fim da abertura de caixa])
```

**Valor inicial:** dinheiro disponível na gaveta no início do turno, utilizado como troco para as operações do caixa.

O sistema deve registrar o valor inicial, a data, o horário e o funcionário responsável pela abertura. O caixa permanece aberto até que o funcionário realize o processo de fechamento.

**Observação:** o bloqueio de uma segunda abertura simultânea deve ser confirmado pelo grupo como regra do sistema proposto, pois essa condição ainda precisa ser validada para a rotina da adega.
## 11. Fechamento de caixa

Quem participa: funcionário do caixa e gerente. O sistema calcula o dinheiro esperado e a diferença.

```mermaid
flowchart TD
    A([Início do turno]) --> B[Funcionário abre o caixa e informa o troco inicial]
    B --> C{Já existe outro caixa aberto?}
    C -- Sim --> D[Sistema bloqueia a abertura]
    C -- Não --> E[Caixa fica ABERTO]
    E --> F[Vendas e recebimentos de fiado entram no caixa]
    F --> G{Fim do turno?}
    G -- Não --> F
    G -- Sim --> H[Funcionário conta o dinheiro da gaveta]
    H --> I[Sistema calcula o valor esperado em dinheiro]
    I --> J[Sistema compara o valor contado com o esperado]
    J --> K{A diferença é zero?}
    K -- Sim --> M[Caixa é fechado]
    K -- Não --> L[Funcionário escreve a justificativa e o gerente confere]
    L --> M
    M --> N[Sistema grava o fechamento no log com data, hora e responsável]
    N --> O([Fim])
```

Valor esperado = troco inicial + dinheiro das vendas do caixa + dinheiro de fiado recebido no caixa. Sangrias (retirada de dinheiro) entram na observação do caixa.

---

## 12. Cobrança e quitação do fiado

Quem participa: gerente (cobrança), atendente (recebimento) e cliente.

```mermaid
flowchart TD
    A([Início]) --> B[Gerente consulta os fiados abertos por data de vencimento]
    B --> C{Há fiado vencido?}
    C -- Não --> Z([Fim])
    C -- Sim --> D[Sistema bloqueia o cliente para novas compras fiadas]
    D --> E[Gerente contata o cliente pelo telefone cadastrado]
    E --> F{O cliente vai pagar?}
    F -- Não --> G[Gerente combina uma nova data com o cliente]
    G --> R[Sistema grava o atendimento no log]
    F -- Sim --> I[Atendente recebe o pagamento total ou parcial]
    I --> J[O valor entra no caixa aberto]
    J --> K[Sistema atualiza o valor pago do fiado]
    K --> L{O saldo zerou?}
    L -- Não --> M[Fiado continua aberto com saldo menor]
    L -- Sim --> N[Fiado é marcado como QUITADO]
    N --> O{O cliente tem outro fiado vencido?}
    O -- Sim --> P[Cliente continua bloqueado]
    O -- Não --> Q[Cliente é liberado]
    M --> R
    P --> R
    Q --> R
    R --> Z
```

---

## 13. Controle de validade

Quem participa: funcionário que recebe a mercadoria, gerente e sistema (consulta diária).

```mermaid
flowchart TD
    A([Recebimento da mercadoria]) --> B{O produto tem validade?}
    B -- Não --> C[Segue o fluxo normal de estoque]
    B -- Sim --> D[Registrar o lote com número e data de validade]
    D --> E[Guardar com os lotes mais antigos na frente]
    E --> F[Sistema consulta os lotes todos os dias]
    F --> G{O lote está vencido?}
    G -- Sim --> H[Retirar da venda e separar o produto]
    H --> I[Registrar a baixa como PERDA com motivo vencimento]
    I --> J[Gerente aprova a perda]
    G -- Não --> K{Vence em até 30 dias?}
    K -- Não --> L[Continua à venda normalmente]
    K -- Sim --> M[Sistema sinaliza o lote e ele vai para a frente da exposição]
    M --> N{Gerente decide}
    N -- Promoção --> O[Vender com desconto antes do vencimento]
    N -- Devolver --> P[Combinar a devolução com o fornecedor]
    N -- Aguardar --> L
    O --> F
    L --> F
    P --> Q[Registrar DEVOLUCAO_FORNECEDOR]
    J --> R([Fim do ciclo])
    Q --> R
```

Na venda, vale a regra do primeiro que vence, primeiro que sai (RN17).

---

## 14. Perdas e quebras

Quem participa: qualquer funcionário (registra) e gerente (aprova).

```mermaid
flowchart TD
    A([Funcionário percebe a perda]) --> B[Separar o produto e contar a quantidade]
    B --> C[Escolher o motivo: quebra, avaria, vencimento ou furto]
    C --> D[Registrar a perda no sistema com o motivo]
    D --> E{Quem registrou é o gerente?}
    E -- Sim --> G[Perda aprovada]
    E -- Não --> F[Gerente confere e decide no sistema]
    F --> H{Gerente aprovou?}
    H -- Não --> I[Perda recusada e o funcionário explica]
    H -- Sim --> G
    G --> J[Sistema baixa o estoque e o lote]
    J --> K[Sistema grava no log o autor e o aprovador]
    K --> L{O saldo ficou no mínimo ou abaixo?}
    L -- Sim --> M[Produto entra na lista de reposição]
    L -- Não --> N([Fim])
    M --> N
    I --> N
```

---

## 15. Escala dos funcionários

Quem participa: gerente e os 3 a 4 funcionários da adega.

```mermaid
flowchart TD
    A([Início da semana]) --> B[Gerente lista os turnos de funcionamento]
    B --> C[Gerente consulta a disponibilidade de cada funcionário]
    C --> D[Gerente monta a escala com a função de cada um no turno]
    D --> E{Todo turno tem 2 pessoas, uma no caixa e outra no balcão?}
    E -- Não --> F[Ajustar a escala ou chamar reforço]
    F --> D
    E -- Sim --> G[Gerente publica a escala]
    G --> H[Funcionários consultam o próprio turno]
    H --> I{Alguém precisa trocar de turno?}
    I -- Não --> N([Fim])
    I -- Sim --> J[O pedido de troca vai ao gerente]
    J --> K{Gerente aprova?}
    K -- Sim --> L[Escala é atualizada]
    K -- Não --> M[Escala continua igual]
    L --> N
    M --> N
```
