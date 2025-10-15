use Plabin_db;

-- Inserções na Tabela FLORESTA 
INSERT INTO FLORESTA (NOME_FLORESTA, AREA_TOTAL, LOCALIZACAO) VALUES
('Fazenda Monte Alegre', 15000.00, 'Telêmaco Borba - PR'),
('Unidade Jari', 8500.50, 'Jari - AM'),
('Reserva Guatambu', 12000.75, 'Lages - SC'),
('Setor Paranapanema', 9200.00, 'Itararé - SP'),
('Área Carnaúba', 6100.20, 'Rio Negro - PR'),
('Fazenda Pinheiros', 10500.00, 'Ortigueira - PR'),
('Setor Miracatu', 7800.00, 'Miracatu - SP'),
('Reserva Iguaçu', 11250.30, 'Pinhão - PR'),
('Vale do Rio Doce', 5900.00, 'Governador Valadares - MG'),
('Mata Atlântica Sul', 13400.90, 'Angra dos Reis - RJ');


-- Inserções na Tabela CERTIFICADO 
INSERT INTO CERTIFICADO (NOME_CERTIFICADO, ORG_EMISSOR, DATA_EMISSAO, VALIDADE) VALUES
('FSC - Manejo Florestal', 'Forest Stewardship Council', '2023-01-15', '2028-01-15'),
('Cerflor - Cadeia de Custódia', 'Inmetro', '2024-03-20', '2029-03-20'),
('ISO 14001:2015', 'ABS Quality Evaluations', '2022-11-01', '2025-11-01'),
('Certificação PEFC', 'PEFC Council', '2023-06-10', '2028-06-10'),
('Certificação Lixo Zero', 'Instituto Lixo Zero Brasil', '2024-01-05', '2026-01-05'),
('Selo Verde ABNT', 'ABNT', '2022-09-15', '2025-09-15'),
('OHSAS 18001 (Saúde e Segurança)', 'BSI Group', '2023-04-01', '2026-04-01'),
('FSC - Madeira Controlada', 'Forest Stewardship Council', '2024-02-10', '2029-02-10');


-- Inserções na Tabela PLANTA_PRODUCAO 
INSERT INTO PLANTA_PRODUCAO (NOME_PLANTA, LOCALIZACAO) VALUES
('Unidade Puma II', 'Ortigueira - PR'),
('Unidade Monte Alegre', 'Telêmaco Borba - PR'),
('Planta Otacílio Costa', 'Otacílio Costa - SC'),
('Fábrica Horizonte', 'Horizonte - CE'),
('Unidade Goiana', 'Goiana - PE'),
('Planta Guaíba', 'Guaíba - RS'),
('Moinho Mauá', 'Mauá - SP'),
('Fábrica Rio Negro', 'Rio Negro - PR');


-- Inserções na Tabela CLIENTE 
INSERT INTO CLIENTE (NOME_CLIENTE, CNPJ_CPF, ENDERECO, CONTATO) VALUES
('Gráfica Alpha', '12.345.678/0001-90', 'Rua das Flores, 100, SP', '(11) 98765-4321'),
('Embalagens Beta LTDA', '98.765.432/0001-12', 'Av. Central, 500, RJ', '(21) 99876-5432'),
('Distribuidora Gama', '01.020.030/0001-45', 'Rodovia do Papel, 1200, PR', '(41) 97766-5544'),
('Publishing Delta S.A.', '04.050.060/0001-78', 'Rua dos Livros, 30, MG', '(31) 96655-4433'),
('Exportadora Epsilon', '07.080.090/0001-01', 'Porto de Santos, Arm. 5, SP', '(13) 95544-3322'),
('Caixas Zeta', '10.110.120/0001-34', 'Rua das Indústrias, 45, BA', '(71) 94433-2211'),
('Indústria Eta', '13.140.150/0001-67', 'Av. Brasil, 888, RS', '(51) 93322-1100'),
('Comércio Teta', '16.170.180/0001-90', 'Rua da Alfândega, 10, PE', '(81) 92211-0099'),
('Lojas Iota', '19.200.210/0001-23', 'Shopping Sul, Lj 10, DF', '(61) 91100-9988'),
('Cadeia Kappa', '22.230.240/0001-56', 'Centro Industrial, 200, CE', '(85) 90099-8877');


-- Inserções na Tabela TRANSPORTE 
INSERT INTO TRANSPORTE (COD_RASTREAMENTO, TRANSPORTADORA, DATA_ENVIO, DATA_ENTREGA) VALUES
('KLB-TRK-987654', 'TransLog Express', '2024-09-01', '2024-09-10'),
('KLB-TRK-123456', 'Rápido Sul', '2024-09-05', '2024-09-15'),
('KLB-TRK-543210', 'Logística Nordeste', '2024-09-10', '2024-09-22'),
('KLB-TRK-001122', 'Transportes K', '2024-09-12', '2024-09-18'),
('KLB-TRK-334455', 'TransRodovia BR', '2024-09-15', '2024-09-25'),
('KLB-TRK-667788', 'Águia Log', '2024-09-18', '2024-09-20'),
('KLB-TRK-990011', 'Marítima Global', '2024-09-20', '2024-10-05'),
('KLB-TRK-102030', 'Jota Jota Cargas', '2024-09-22', '2024-09-28');


-- Inserções na Tabela TALHAO 
INSERT INTO TALHAO (CODIGO_TALHAO, ESPECIE_MADEIRA, DATA_PLANTIO, DATA_PREVISAO_COLHEITA, ID_FLORESTA) VALUES
('TB-EUC-2020A', 'Eucalipto', '2020-03-10', '2027-03-10', 1), 
('JR-PIN-2018B', 'Pinus', '2018-08-25', '2030-08-25', 2), 
('LG-EUC-2021C', 'Eucalipto', '2021-01-05', '2028-01-05', 3), 
('IT-PIN-2019D', 'Pinus', '2019-06-15', '2031-06-15', 4), 
('RN-EUC-2022E', 'Eucalipto', '2022-04-01', '2029-04-01', 5), 
('OR-PIN-2017F', 'Pinus', '2017-11-20', '2029-11-20', 6), 
('MR-EUC-2023G', 'Eucalipto', '2023-02-14', '2030-02-14', 7), 
('PH-PIN-2020H', 'Pinus', '2020-10-30', '2032-10-30', 8), 
('GV-EUC-2021I', 'Eucalipto', '2021-07-07', '2028-07-07', 9), 
('AR-PIN-2022J', 'Pinus', '2022-12-01', '2034-12-01', 10); 


-- Inserções na Tabela FLORESTA_CERTIFICADO 
INSERT INTO FLORESTA_CERTIFICADO (ID_FLORESTA, ID_CERTIFICADO) VALUES
(1, 1), (1, 3), (1, 7), 
(3, 2), (3, 4), (3, 6), 
(6, 1), (8, 5); 


-- Inserções na Tabela CELULOSE 
INSERT INTO CELULOSE (TIPO_CELULOSE, DESCRICAO, UNIDADE_MEDIDA, ID_PLANTA) VALUES
('Fibra Curta (Eucalipto)', 'Celulose Branqueada de Fibra Curta para Papel de Imprimir e Escrever.', 'Ton', 1), 
('Fibra Longa (Pinus)', 'Celulose Branqueada de Fibra Longa para Papel Kraft.', 'Ton', 1), 
('Fluff', 'Celulose Fluff para produtos de higiene absorventes.', 'Ton', 2), 
('Fibra Curta Não Branqueada', 'Para produção de Papel-Cartão de baixa gramatura.', 'Ton', 3), 
('Fibra Longa Branqueada Premium', 'Alta resistência, ideal para embalagens pesadas.', 'Ton', 4), 
('Celulose de Dissolução', 'Utilizada na produção de viscose.', 'Ton', 2), 
('Celulose P&W', 'Celulose para Papel e White (Branco).', 'Ton', 5), 
('Fibra Curta Standard', 'Uso geral em papéis de embalagem.', 'Ton', 6); 


-- Inserções na Tabela PEDIDO
INSERT INTO PEDIDO (DATA_PEDIDO, DATA_ENTREGA_PREV, STATUS, ID_CLIENTE, ID_TRANSPORTE) VALUES
('2024-09-25', '2024-10-05', 'Concluído', 1, 1),
('2024-09-26', '2024-10-08', 'Em Processamento', 2, NULL),
('2024-09-27', '2024-10-06', 'Enviado', 3, 2),
('2024-09-27', '2024-10-10', 'Concluído', 4, 3),
('2024-09-28', '2024-10-15', 'Enviado', 5, 4),
('2024-09-28', '2024-10-12', 'Aguardando Pagamento', 6, NULL),
('2024-09-29', '2024-10-09', 'Concluído', 7, 5),
('2024-09-30', '2024-10-14', 'Em Processamento', 8, 6),
('2024-10-01', '2024-10-11', 'Enviado', 9, 7),
('2024-10-01', '2024-10-16', 'Concluído', 10, 8);



-- Inserções na Tabela COLHEITA 
INSERT INTO COLHEITA (DATA_INICIO, DATA_FIM, VOLUME_MADEIRA, ID_TALHAO) VALUES
('2024-01-10', '2024-02-01', 2500.50, 1),
('2024-03-05', '2024-03-20', 1800.00, 3),
('2023-10-15', '2023-11-01', 3200.75, 6),
('2024-04-01', '2024-04-15', 1950.00, 4),
('2023-08-20', '2023-09-05', 2800.10, 2),
('2024-05-10', '2024-05-25', 1500.20, 9),
('2023-11-15', '2023-12-01', 3500.00, 8),
('2024-06-01', '2024-06-15', 1200.00, 5),
('2024-07-01', '2024-07-15', 2100.00, 7),
('2023-09-10', '2023-09-25', 2300.50, 1); 


-- Inserções na Tabela PAPEL 
INSERT INTO PAPEL (TIPO_PAPEL, ESPECIFICACAO, PESO, ACABAMENTO, ID_CELULOSE_USADA, ID_PLANTA) VALUES
('Papel Cartão Supremo', 'Branco, Dupla Camada', 300.00, 'Fosco', 1, 2), 
('Kraftliner Marrom', 'Alta Resistência', 175.00, 'Rugoso', 2, 1), 
('Papel Offset Branco', 'Brilho Semi-Fosco', 90.00, 'Liso', 7, 5), 
('Cartão para Líquidos', 'Laminado, Barreira Umidade', 250.00, 'Brilhante', 1, 2),
('Papel Kraft Extensível', 'Sacos Industriais', 80.00, 'Texturizado', 5, 4), 
('Papel Cartão Reciclado', 'Cinza, Camada Simples', 150.00, 'Rústico', 4, 3), 
('Papel Jornal', 'Baixa Gramatura', 48.00, 'Opaco', 8, 6), 
('White Top Liner', 'Superfície Branca', 125.00, 'Semi-Liso', 2, 1),
('Papel Térmico', 'Revestimento Especial', 60.00, 'Liso', 7, 5),
('Cartão Duplex', 'Reverso Pardo', 280.00, 'Fosco', 4, 3);


-- Inserções na Tabela EMBALAGEM 
INSERT INTO EMBALAGEM (TIPO_EMBALAGEM, DIMENSOES, USO_FINAL, ID_PAPEL_ORIGEM, ID_PLANTA) VALUES
('Caixa de Papelão Ondulado (P)', '20x15x10 cm', 'Ecommerce', 2, 1),
('Caixa para Alimentos Líquidos (1L)', '7x7x20 cm', 'Laticínios', 4, 2), 
('Saco Industrial (Cimento)', '50x100 cm', 'Materiais Construção', 5, 4), 
('Display de Ponto de Venda', '60x40x150 cm', 'Marketing', 1, 2), 
('Caixa de Papelão Ondulado (G)', '60x40x30 cm', 'Logística', 8, 1), 
('Embalagem para Medicamentos', '10x5x3 cm', 'Farmacêutica', 10, 3), 
('Caixa de Pizza (35cm)', '35x35x4 cm', 'Delivery', 6, 3), 
('Saco para Ração Animal', '40x80 cm', 'Agropecuária', 5, 4),
('Caixa para Frutas (Exportação)', '45x30x15 cm', 'Hortifrúti', 2, 1),
('Caixa tipo Maleta', '30x20x12 cm', 'Brinquedos', 1, 2);



-- Inserções na Tabela ITEM_PEDIDO 
INSERT INTO ITEM_PEDIDO (ID_PEDIDO, QUANTIDADE, PRECO_UNITARIO, ID_CELULOSE, ID_PAPEL, ID_EMBALAGEM) VALUES

(1, 500.00, 1800.00, 1, NULL, NULL),   
(1, 1000.00, 4.50, NULL, NULL, 1),    
(3, 80.00, 2200.00, 2, NULL, NULL), 
(4, 1500.00, 3.80, NULL, 3, NULL),   
(4, 500.00, 5.50, NULL, NULL, 2),
(5, 200.00, 4500.00, NULL, NULL, 3),
(7, 3000.00, 1.20, NULL, 6, NULL),
(8, 600.00, 150.00, 3, NULL, NULL),
(9, 800.00, 0.95, NULL, 7, NULL),
(10, 1200.00, 5.00, NULL, NULL, 6);  

-- Inserções na Tabela ABASTECIMENTO_MADEIRA
INSERT INTO ABASTECIMENTO_MADEIRA (ID_COLHEITA, ID_PLANTA, VOLUME_ENVIADO, DATA_ENVIO) VALUES
(1, 1, 1500.00, '2024-02-05'),
(1, 2, 1000.50, '2024-02-05'),
(3, 1, 2000.75, '2023-11-05'),
(3, 4, 1200.00, '2023-11-10'),
(6, 6, 800.20, '2024-05-30'),
(6, 7, 700.00, '2024-05-30'),
(5, 4, 1500.00, '2023-09-08'),
(5, 5, 1300.10, '2023-09-09'),
(7, 2, 3000.00, '2023-12-05'),
(9, 3, 1050.00, '2024-07-20'),
(9, 8, 1050.00, '2024-07-20'),
(2, 3, 1800.00, '2024-03-25');






