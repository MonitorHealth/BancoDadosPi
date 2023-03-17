USE dbSprintPI;

-- INSERT Empresa
insert into tbEmpresa (nomeEmpresa, cnpjEmpresa, segmento, telEmpresa ,emailEmpresa, ruaEmpresa, numeroEndereco, bairroEndereco ,cidadeEndereco, cepEndereco)
 VALUES
                        
	('QLL Logística', '12.610.534/0001-19', 'Logistica em geral', '(11)3185-4820' , 'contato@qll.com.br ',
	    'Av. Sargtbempresaento da Aeronáutica Jaime Regalo Pereira', 563 ,'Jardim Cumbica', 'Guarulhos', '07182-000'),
    ('Vacinas Confiaveis', '71.471.231/0001-21', 'Saúde','(86) 2132-2124', 'VacConfiaveis@gmail.com',
         'Rua Das Graças', '71', 'Parque Guaianases', 'São Paulo', ''),
    (null, 'Vidas Saudaveis', '97.221.993/0001-63', 'Saúde', '(79) 2277-7735', 'vidasaudaveis@gmail.com', 'Rua Haddock lobo', '8425', 'Jardim Paulista', 'São Paulo', ''),
    (null, 'Vic Soluções', '13.016.431/0001-98', 'Sáude', '(67) 3398-8498', 'vicsolucoes@gmail.com', 'Rua da independência', '632', 'Cambuci', 'São Paulo', 'bloco F'),
    (null, 'Armazenador Vacinas', '21.216.583/0001-62', 'Sáude', '(49) 2567-6235', 'ArmVacinas@gmail.com', 'Rua da Sorte', '564', 'Tiradentes', 'São Paulo', '' ),
    (null, 'Vacinas Tech', '85.143.053/0001-14', 'Sáude', '(86) 2537-8787', 'vacstech@gmail.com', 'Rua Feliciano de Mendonça', '291', 'Guaianases', 'São Paulo', '' );

            
-- INSER Usuario
INSERT INTO tbusuario (nomeUsuario, senhaUsuario, permissoes, idEmpresa)
 VALUES
    ('Guilherme', '123', 'total', 1),
    ('André', '231', 'intermediario', 1),
    ('João', '321', 'basico', 1);

SELECT * FROM tbusuario;

-- INSERT Sensor
INSERT INTO tbsensor (tipoSensor, dtInstalacao, localInstalado)
 VALUES
    ('presença', '2023-03-09', 'freezerA'),
    ('temperatura e umidade','2023-03-09', 'freezerB');

SELECT * FROM tbsensor;


-- INSERT EntradaDados
INSERT INTO tbentradasensor (valorEntrada, dtEntrada, idSensor)
 VALUES 
	('20.5', '2023-03-09 20:15:00', 1),
    ('1', '2023-03-09 20:16:00', 2);
    
    truncate table tbentradadados;
    
SELECT * FROM tbentradasensor;