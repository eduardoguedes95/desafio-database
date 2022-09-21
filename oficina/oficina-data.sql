-- drop database os_oficina;
use os_oficina;

insert into cliente(CNome, Sobrenome, Endereco, Telefone) values
					('Marcelo','Gomes', 'Rua Alameda de Araujo, 288','088998789489'),
                    ('Eduardo','Guedes', 'Joaquim Evaristo Gadelha, 355','088945612589'),
                    ('Amanda','Tavarez', 'Rua Alameda de Araujo, 275','088993654725'),
                    ('Mickaele','Garcia', 'Lauro da Silva Gomes, 965','088996123425'),
                    ('Maria','Santos', 'Francisco das Chagas Lucena, 1234','088992784536'),
                    ('Tadeu','Cesar', 'Joaquim Evaristo Gadelha, 375','088994352612');
                    


SET foreign_key_checks = 0;
insert into veiculo (idVCliente,Condicao) values
					(1,'Revisao'),
                    (2,'Conserto'),
                    (3,'Revisao'),
                    (2,'Revisao'),
                    (3,'Revisao'),
                    (5,'Conserto'),
                    (6,'Revisao'),
                    (4,'Conserto'),
                    (4,'Revisao');
                    
select * from veiculo,cliente where idVCliente=idCliente;

insert into mecanicos(idMCliente,idMVeiculo,MNome,Especialidade) values
					(1,1,'Matheus','Revisao'),
                    (2,2,'Andrew','Conserto'),
					(3,3,'Matheus','Revisao'),
                    (2,4,'Matheus','Revisao'),
                    (3,5,'Matheus','Revisao'),
                    (5,6,'Andrew','Conserto'),
					(6,7,'Matheus','Revisao'),
                    (4,8,'Andrew','Conserto'),
                    (4,9,'Matheus','Revisao');
                  
                    

drop table OS;
insert into OS(dataEmissao, valor, statusOS, dataConclusao) values 
			('2021-09-12',50.00,'Em processamento',null),
            ('2021-07-20',120.00,default,null),
            ('2021-06-10',1230.00,'Concluido','2021-08-13'),
            ('2021-05-22',null,'Cancelado',null),
            ('2021-08-01',150.00,'Concluido','2021-08-10'),
            ('2021-05-21',100.00,'Concluido','2021-06-15'),
            ('2021-08-10',150.00,'Concluido','2021-09-16'),
            ('2021-05-10',150.00,'Concluido','2021-05-11'),
            ('2021-07-30',100.00,'Concluido','2021-08-15');
-- drop table servicos_has_os;
insert into servicos_has_os(idSOSOs,idSOSMecanicos,idSOSVeiculo,idSOSCliente) values 
							(1,1,1,1),
                            (2,2,2,2),
                            (3,3,3,3),
                            (4,4,4,2),
                            (5,5,5,3),
                            (6,6,6,5),
                            (7,7,7,6),
                            (8,8,8,4),
                            (9,9,9,4);
select CNome from servicos_has_os,cliente where idCliente=idSOSCliente;
insert into pecas(idPecas,valorPecas) values
				(1,20.00),
                (2,50.00),
                (3,70.00),
                (4,30.00),
                (5,45.00),
                (6,53.00);