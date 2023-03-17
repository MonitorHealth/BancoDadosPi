USE dbSprintPI;

-- INSERT Empresa
insert into tbEmpresa (nomeEmpresa, cnpjEmpresa, segmento, telEmpresa ,emailEmpresa, ruaEmpresa,
						numeroEndereco, bairroEndereco ,cidadeEndereco, cepEndereco, complemento)
 VALUES
	('QLL Logística', '12.610.534/0001-19', 'Logistica em geral', '(11)3185-4820' , 'contato@qll.com.br',
		'Av. Sargtbempresaento da Aeronáutica Jaime Regalo Pereira', 563 ,'Jardim Cumbica', 'Guarulhos', '07182-000', null),
        
	('DRS Group', '00.804.488/0001-00', 'Saúde', '(11)3198-9000' , 'contato@drsgroup.com.br',
		'Rodovia Anhanguera', 928 ,'Vila Jaguara', 'São Paulo', '05113-000', 'Galpoes 04-09-40'),
        
    ('Enivix', '04.838.701/0004-06', 'Saúde', '(11)3032-1567' , 'contato@enivix.com.br',
		'Avenida Brigadeiro Faria Lima', 1656 ,'Pinheiros', 'São Paulo', '05426-200', '7 andar Sala A'),
        
	('VacEco', '32.472.438/0001-69', 'Saúde', '(15)2590-1501' , 'contato@vaceco.com.br',
		'Alameda dos Pinus', 1656 ,'Franca', 'São Paulo', '14404-406', null), 
        
	('VacGuard', '54.918.533/0001-86', 'Saúde', '(11)2685-6943' , 'contato@vacguard.com.br',
		'Rua Oliveira Barros', 369 ,'Parque Viviane', 'Itaquaquecetuba', '08582-100', null); 

-- INSERT Usuario
INSERT INTO tbusuario (nomeUsuario, senhaUsuario, permissoes, idEmpresa)
 VALUES
	('Ricardo Vicente', '123#Asd', 'intermediario', 1),
    ('Mark Zuckenberg', 'Mark@012', 'basico', 2),
    ('Guilherme Scarabelli', 'Gui#212', 'intermediario', 3),
    ('Alan Turing', 'loveComputacao#1912', 'total', 4),
    ('Ada Lovelace', 'PrimeiroAlgoritmo@1815', 'total', 5);

SELECT * FROM tbusuario;

-- INSERT Sensor
INSERT INTO tbsensor (tipoSensor, dtInstalacao, localInstalado)
 VALUES
	('Presença', '2022-12-15', 'geladeira 150L'),
    ('Temperatura e umidade', '2020-02-24', 'geladeira 150L');
SELECT * FROM tbsensor;

-- INSERT EntradaDados
INSERT INTO tbentradasensor (valorEntrada, dtEntrada, idSensor)
 VALUES 
	(1 , '2022-12-16 08:00:00', 1),
    (-20, '2020-02-24 18:00:00',2);
