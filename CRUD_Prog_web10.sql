-- CRUD
-- C - Creat - INSERT
-- R - Read - SELECT
-- U - Update 
-- D - Delete

INSERT -----------------
INSERT INTO usuarios (nome, email, senha, obs, data_cadastro) VALUES ( "Pedro", "pedro@email.com", "teste", "", "2024-10-15"  );

INSERT INTO usuarios ( email, nome, senha, data_cadastro ) 
VALUES ( "fe@email.com", "Fernando", 12345, "2024-10-20" );

INSERT INTO usuarios ( email, nome, senha, data_cadastro ) 
VALUES ( "carla@email.com", "Carla", "admin", "2024-10-25" );

INSERT INTO usuarios ( email, nome, senha, obs, data_cadastro ) 
VALUES ( "isa@email.com", "Isabel", "teste","Sem Observações", NOW() );

UPDATE -----------------------
UPDATE usuarios SET nome = "Fernando", email = "fe@email.com" WHERE id = 2;
UPDATE usuarios SET nome = "Pedro", email = "pedro@email.com" WHERE id >= 3;
UPDATE usuarios SET obs = "Sem Informações" WHERE obs = "";
UPDATE usuarios SET data_cadastro = "2024-10-20" WHERE id = 5;

DELETE ----------------------
DELETE FROM usuarios WHERE id = 4;
DELETE FROM usuarios WHERE id = 6;

SELECT ----------------------

SELECT * FROM usuarios
SELECT * FROM usuarios WHERE id = 6;
SELECT * FROM usuarios WHERE id > 3;
SELECT * FROM usuarios WHERE obs = "Sem Observações";
SELECT * FROM usuarios WHERE data_cadastro > "2024-10-20";
SELECT * FROM usuarios WHERE id = 7 OR data_cadastro < "2024-10-25";
SELECT * FROM usuarios WHERE id < 4 AND data_cadastro < "2024-10-25";
SELECT * FROM usuarios ORDER BY nome DESC ;
SELECT * FROM usuarios ORDER BY nome ASC ; 
SELECT * FROM usuarios WHERE data_cadastro > "2024-10-15" ORDER BY data_cadastro DESC, nome ASC;
SELECT * FROM usuarios WHERE data_cadastro > "2024-10-15" ORDER BY data_cadastro DESC, nome ASC LIMIT 3