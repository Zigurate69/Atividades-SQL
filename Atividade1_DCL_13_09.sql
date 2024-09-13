CREATE DATABASE empresa_db;

#Cria o usuario funcionario
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY '123';

#Cria o usuario gerente
CREATE USER 'gerente'@'localhost' IDENTIFIED BY '1234';

#Cria o usuario admin
CREATE USER 'admin'@'localhost' IDENTIFIED BY '12345';

#Garante a permissão de executar consultas para o funcionario 
GRANT SELECT ON empresa_db.* TO 'funcionario'@'localhost';

#Executar consultas, inserir e atualizar dados no banco de dados, para o gerente
GRANT SELECT ON empresa_db.* TO 'gerente'@'localhost';
GRANT INSERT ON empresa_db.* TO 'gerente'@'localhost';
GRANT UPDATE ON empresa_db.* TO 'gerente'@'localhost';

#Da todas as permissões para o usuario admin
GRANT ALL PRIVILEGES ON empresa_db.* TO 'admin'@'localhost';

#Revoga a permissão de inserir dados do usuário do gerente
REVOKE INSERT ON empresa_db.* FROM 'gerente'@'localhost';

#Renomear o usuario funcionario
RENAME USER 'funcionario'@'localhost' TO 'assistente'@'localhost';

#Altera a senha do usuario gerente
ALTER USER 'gerente'@'localhost' IDENTIFIED BY '4321';

#Verifica a permissão dos usuarios
SHOW GRANTS FOR 'assistente'@'localhost';
SHOW GRANTS FOR 'gerente'@'localhost';
SHOW GRANTS FOR 'admin'@'localhost';

#Exclui o usuario assistente
DROP USER 'assistente'@'localhost';