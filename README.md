
# 🌲 PLABIN_DB: Modelagem de Dados da Cadeia Produtiva Florestal


## 🎯 Sobre o Projeto

Este repositório contém a modelagem e o script de inicialização (`DDL` e `DML`) de um banco de dados relacional (SQL) projetado para simular e gerenciar a cadeia de valor integrada de uma grande empresa de papel e celulose, inspirada na Klabin.

O projeto abrange a rastreabilidade completa, desde o plantio na floresta até a entrega do produto final (Celulose, Papel e Embalagem) ao cliente.



## ✨ Principais Funcionalidades do Modelo

O modelo de dados implementa a integração de quatro pilares de negócio:

-  **Gestão Florestal e Sustentabilidade:**
      * Cadastro de `FLORESTA` e `TALHAO` (lotes de madeira) com previsão de colheita.
      * Rastreamento de `COLHEITA` com volume de madeira extraído.
      * Gestão de `CERTIFICADO` (como FSC e ISO) associados às florestas.
        
-  **Abastecimento da Indústria:**
      * A tabela `ABASTECIMENTO_MADEIRA` rastreia qual volume de uma `COLHEITA` específica foi enviado para qual `PLANTA_PRODUCAO`, permitindo a rastreabilidade da matéria-prima.
        
-  **Cadeia de Produção:**
      * Representação da transformação sequencial: a `PLANTA_PRODUCAO` usa madeira para produzir `CELULOSE`, que é usada para produzir `PAPEL`, que por sua vez é usado para produzir `EMBALAGEM`.
        
-  **Comercial e Logística:**
      * Gestão de `CLIENTE`s, `TRANSPORTE` e `PEDIDO`s. A tabela `ITEM_PEDIDO` demonstra a venda de qualquer um dos três produtos finais (Celulose, Papel ou Embalagem) dentro do mesmo pedido.

        
 
## Screenshots 

**Diagrama**

<img width="834" height="706" alt="Captura de tela de 2025-10-14 21-23-21" src="https://github.com/user-attachments/assets/9b273298-ed07-47d9-95a0-76fe7751c129" />


## 🛠️ Tecnologias Utilizadas

  * **SGBD:** MySQL 
  * **Linguagem:** SQL (DDL e DML)
  * **Ferramentas:** Visual Studio Code, DBeaver.

    

## 📁 Estrutura do Repositório

  * `plabin_mysql_db.sql`: Arquivo principal contendo os comandos `DROP DATABASE`, `CREATE TABLE` (DDL)
  * `seeds_plabin_db_mysql.sql`: Todas as inserções de dados (`INSERT` / Seeds - DML) dados FAKE.
    

## 🚀 Como Executar o Projeto

Para visualizar e interagir com o banco de dados localmente:



### Pré-requisitos

1.  Ter um servidor MySQL instalado.
2.  Ter uma ferramenta de gerenciamento de banco de dados (MySQL Workbench, DBeaver, etc.) ou acesso ao terminal SQL.

### Passos

-  **Conexão:** Conecte-se ao seu servidor MySQL.
  
-  **Execute os Scripts:**
      
      * Arquivo `plabin_mysql_db.sql`  criará todas as 17 tabelas.
      * Arquivo `seeds_plabin_db_mysql.sql` preencherá com dados de exemplo (seeds).


        
-  **Validação:** Você pode rodar consultas básicas para explorar o modelo:

<!-- end list -->

```sql
USE klabin_db;

-- 1. Rastrear o produto final até a floresta de origem

SELECT 
    E.TIPO_EMBALAGEM,
    F.NOME_FLORESTA
FROM 
    EMBALAGEM E
JOIN 
    PAPEL P ON E.ID_PAPEL_ORIGEM = P.ID_PAPEL
JOIN 
    CELULOSE C ON P.ID_CELULOSE_USADA = C.ID_CELULOSE
JOIN 
    PLANTA_PRODUCAO PP ON C.ID_PLANTA = PP.ID_PLANTA
JOIN 
    ABASTECIMENTO_MADEIRA AM ON PP.ID_PLANTA = AM.ID_PLANTA
JOIN 
    COLHEITA CO ON AM.ID_COLHEITA = CO.ID_COLHEITA
JOIN 
    TALHAO T ON CO.ID_TALHAO = T.ID_TALHAO
JOIN
    FLORESTA F ON T.ID_FLORESTA = F.ID_FLORESTA
LIMIT 5;

-- 2. Verificar o status de pedidos

SELECT
    P.ID_PEDIDO,
    C.NOME_CLIENTE,
    P.STATUS,
    T.TRANSPORTADORA
FROM
    PEDIDO P
JOIN
    CLIENTE C ON P.ID_CLIENTE = C.ID_CLIENTE
LEFT JOIN
    TRANSPORTE T ON P.ID_TRANSPORTE = T.ID_TRANSPORTE;
```

-----

## 👨‍💻 Autor

Renan

  * [LinkedIn](https://www.linkedin.com/in/renan-zumpichiatti/)
  * [GitHub](https://github.com/zumpchiat/)

## 📝 Licença

[MIT License]

