LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2024/3T2024/3T2024.csv'
INTO TABLE relatorio_contabil
FIELDS TERMINATED BY ';'  
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, 
  @VL_SALDO_INICIAL, @VL_SALDO_FINAL)
SET 
  VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'),
  VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.'),
  PERIODO = '3T2024';  
  
