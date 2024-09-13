CREATE USER 'samel'@'localhost' IDENTIFIED BY '123';

RENAME USER 'samel'@'localhost' TO 'samuel'@'localhost';

SELECT USER, HOST FROM MYSQL.user;

#Cria e exclui o usuario
CREATE USER 'joão pedro'@'localhost' IDENTIFIED BY '1234';
DROP USER 'joão pedro'@'localhost';

#Cria e renomeia o usuario
CREATE USER 'maria'@'localhost' IDENTIFIED BY '12345';
RENAME USER 'maria'@'localhost' TO 'maria julia'@'localhost';

#Altera a senha do usuario
ALTER USER 'samuel'@'localhost' IDENTIFIED BY '7434';

#Garante todos os privilegios
GRANT ALL PRIVILEGES ON exemplo_1e TO 'samuel'@'localhost';

#Mostra os privilegios do usuario
SHOW GRANTS FOR 'samuel'@'localhost';

#Revoga todos os privilegios dados ao usuario
REVOKE ALL PRIVILEGES ON exemplo_1e FROM 'samuel'@'localhost';

#Garante acesso para inserir dados em todas as tabelas
GRANT INSERT ON exemplo_1e.* TO 'samuel'@'localhost';


GRANT SELECT ON exemplo_1e.* TO 'samuel'@'localhost';

GRANT DELETE ON exemplo_1e.* TO 'samuel'@'localhost';

GRANT UPDATE ON exemplo_1e.* TO 'samuel'@'localhost';