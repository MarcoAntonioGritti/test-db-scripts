LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Relatorio_cadop.csv'
INTO TABLE relatorio_cadop
FIELDS TERMINATED BY ';'  
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Registro_ANS, CNPJ, Razao_Social, Nome_Fantasia, Modalidade, Logradouro, Numero, 
 @Complemento, Bairro, Cidade, UF, CEP, DDD, @Telefone, @Fax, Endereco_eletronico, 
 Representante, Cargo_Representante, @Regiao_de_Comercializacao, @Data_Registro_ANS)
SET 
    Complemento = NULLIF(@Complemento, ''),
    Telefone = NULLIF(@Telefone, ''),
    Fax = NULLIF(@Fax, ''),
    Regiao_de_Comercializacao = NULLIF(@Regiao_de_Comercializacao, ''),
    Data_Registro_ANS = NULLIF(@Data_Registro_ANS, '');


