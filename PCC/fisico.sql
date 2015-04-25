CREATE DATABASE bomdeservico;

USE bomdeservico;

CREATE TABLE contratante(
 email VARCHAR(60) NOT NULL,
 cnpj BIGINT NULL,
 cpf BIGINT NULL,
 senha VARCHAR(16) NOT NULL,
 nome VARCHAR(60) NOT NULL,
 logradouro VARCHAR(50) NOT NULL,
 numero INT NOT NULL,
 complemento VARCHAR(60) NOT NULL,
 bairro VARCHAR(50) NOT NULL,
 cidade VARCHAR(50) NOT NULL,
 uf CHAR(2) NOT NULL,
 cep INT NOT NULL,
 PRIMARY KEY (email)
);
  
CREATE TABLE contratado(
 nome_usuario INT NOT NULL,
 cnpj BIGINT NULL,
 cpf BIGINT NULL,
 senha VARCHAR(16) NOT NULL,
 nome VARCHAR(60) NOT NULL,
 nome_fantasia VARCHAR(25) NULL,
 email VARCHAR(60) NOT NULL,
 logradouro VARCHAR(50) NOT NULL,
 numero INT NOT NULL,
 complemento VARCHAR(60) NOT NULL,
 bairro VARCHAR(50) NOT NULL,
 cidade VARCHAR(50) NOT NULL,
 uf CHAR(2) NOT NULL,
 cep INT NOT NULL,
 tipo_usuario CHAR(3) NOT NULL,
 url VARCHAR(100) NULL,
 funcao VARCHAR(30) NOT NULL,
 PRIMARY KEY (nome_usuario)
);
  
CREATE TABLE servico(
 contratante_email VARCHAR(60) NOT NULL,
 contratado_nome_usuario INT NOT NULL,
 avaliacao DOUBLE(2,1) NULL,
 data_servico DATE NULL,
 descricao VARCHAR(140) NULL,
 FOREIGN KEY (contratado_nome_usuario) REFERENCES contratado(nome_usuario),
 FOREIGN KEY (contratante_email) REFERENCES contratante(email)
);
	
CREATE TABLE telefone_contratante(
 contratante_email VARCHAR(60) NOT NULL,
 fixo BIGINT NOT NULL,
 celular BIGINT NULL,
 FOREIGN KEY (contratante_email) REFERENCES contratante(email)
);
	
CREATE TABLE telefone_contratado (
 contratado_nome_usuario INT NOT NULL,
 fixo BIGINT NOT NULL,
 celular BIGINT NULL,
 FOREIGN KEY (contratado_nome_usuario) REFERENCES contratado(nome_usuario)
);