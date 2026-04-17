CREATE TABLE Produto ( 
 cod_produto INT,  
 qtd_produto INT,  
 valor_produto INT PRIMARY KEY,  
 idfarmacia INT 
); 

CREATE TABLE farmacia ( 
 CNPJ_farmacia INT PRIMARY KEY,  
 end_farmacia INT,  
 tel_farmacia INT,  
 nome_farmacia INT
); 

CREATE TABLE farmaceutico ( 
 nome_farmaceutico INT,  
 RG_farmaceutico INT PRIMARY KEY,  
 idfarmacia INT 
); 

ALTER TABLE Produto ADD FOREIGN KEY(idfarmacia) REFERENCES farmacia (idfarmacia)
ALTER TABLE farmaceutico ADD FOREIGN KEY(idfarmacia) REFERENCES farmacia (idfarmacia)
