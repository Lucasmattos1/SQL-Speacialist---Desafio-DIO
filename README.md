# SQL-Speacialist---Desafio-DIO
Criação de Índices de Procedures - Desafio de Projeto SQL Speacialist

Parte 1 - Criando índices em Banco de Dados 

# Sistema de Gerenciamento de Ordens de Serviço - Oficina Mecânica

Esta parte do projeto consiste em um sistema de gerenciamento de ordens de serviço para uma oficina mecânica, onde clientes podem levar seus veículos para consertos e revisões periódicas. O sistema inclui funcionalidades para cadastro de ordens de serviço, peças, mecânicos e serviços.


Parte 2 - Utilização de procedures para manipulação de dados em Banco de Dados 

Descrição do Projeto
Esta parte do projeto tem como objetivo demonstrar o uso de procedures em um banco de dados para a manipulação de dados (inserção, atualização, remoção e seleção) em um sistema de gerenciamento de ordens de serviço para uma oficina mecânica. A procedure criada permite realizar essas operações de forma dinâmica, controlada por uma variável que define qual ação será executada.

Motivação
O uso de procedures facilita a manutenção e melhora o desempenho de um sistema ao centralizar as principais operações de manipulação de dados em um único lugar. Além disso, oferece uma maneira padronizada e segura de interagir com o banco de dados.

Tecnologias Utilizadas
Banco de Dados Relacional: MySQL (ou qualquer outro SGBD relacional compatível com procedures)
SQL: Linguagem de consulta estruturada para a criação de tabelas, índices e procedures.
Estrutura da Procedure
A procedure ManipulaOrdemServico utiliza uma variável de controle (p_opcao) para executar uma das seguintes operações:

Inserção de uma nova ordem de serviço
Atualização de uma ordem de serviço existente
Remoção de uma ordem de serviço
Seleção de informações de uma ordem de serviço
Parâmetros da Procedure
p_opcao: (INT) Determina a ação a ser realizada.
1: Selecionar informações de uma ordem de serviço.
2: Atualizar uma ordem de serviço existente.
3: Deletar uma ordem de serviço.
4: Inserir uma nova ordem de serviço.
p_id_os: (INT) O ID da ordem de serviço (para SELECT, UPDATE e DELETE).
p_data_emissao: (DATE) Data de emissão da ordem (para INSERT e UPDATE).
p_data_conclusao: (DATE) Data de conclusão da ordem (para INSERT e UPDATE).
p_status: (VARCHAR) Status da ordem de serviço (para INSERT e UPDATE).
p_valor: (DECIMAL) Valor total da ordem de serviço (para INSERT e UPDATE).




