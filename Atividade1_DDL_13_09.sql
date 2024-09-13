CREATE DATABASE empresa;

CREATE TABLE departamento(
cod_departamento integer PRIMARY KEY,
nome_departamento varchar(50)
);

CREATE TABLE funcionario(
cod_funcionario integer PRIMARY KEY,
cod_departamento integer,
nome_funcionario varchar(100),
nasc_funcionario date,
salario_funcionario numeric(10,2),
FOREIGN KEY(cod_departamento) REFERENCES departamento(cod_departamento)
); 

CREATE TABLE dependente(
cod_dependente integer PRIMARY KEY,
cod_funcionario integer,
nome_dependente varchar(100),
FOREIGN KEY(cod_funcionario) REFERENCES funcionario(cod_funcionario)
);