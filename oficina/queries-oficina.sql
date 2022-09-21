use os_oficina;


-- Clientes totais 
select * from cliente;
-- -----------------------------------------------------------
-- ID do veiculo de cada pessoa 

select idCliente,idVeiculo, CNome, Sobrenome from veiculo v, cliente c where idCliente = idVcliente;

-- -----------------------------------------------------------------------------------
-- Relação de clientes e o(s) serviço do(s) veiculo(s)
select concat(CNome,' ',Sobrenome) as Nome_Completo, Endereco, Telefone, Condicao 
		from cliente c, veiculo v 
		where c.idCliente=v.idVCliente;        
        
-- ------------------------------------------------------------------------------        
-- Relação de mecanicos e os veiculos
select idCliente, concat(CNome,' ',Sobrenome) as Nome_completo, Endereco, MNome as Nome_mecanico, Especialidade 
	from cliente, mecanicos 
    where idMCliente=idCliente;
-- ------------------------------------------------------------------------


-- Recuperando todos os carros em revisao e os que estão em concerto

-- REVISAO

select concat(CNome,' ', Sobrenome) as Nome_completo, MNome as Nome_mecanico,  Condicao
from cliente
inner join veiculo on idVCliente = idCliente
inner join mecanicos on idMVeiculo = idVeiculo
where Condicao like 'Revisao'
order by Condicao;

-- Conserto

select concat(CNome,' ', Sobrenome) as Nome_completo, MNome as Nome_mecanico,  Condicao
from cliente
inner join veiculo on idVCliente = idCliente
inner join mecanicos on idMVeiculo = idVeiculo
where Condicao like 'Conserto';


-- ----------------------------------------------------------
-- Recuperando a ordem de serviço em relação aos veiculos dos clientes
select CNome, Sobrenome, idSOSVeiculo, dataEmissao, valor, statusOS, dataConclusao from cliente c
inner join servicos_has_os s on idSOSCliente = idCliente
inner join OS o on idOs = idSOSos
order by idSOSos;


-- Recuperando os que fizeram mais de uma ida a oficina

select Cnome, sobrenome, count(*) as Numero_de_idas
	from cliente,veiculo
    where idCliente = idVCliente
    group by Cnome, Sobrenome
    having count(*) > 1;
