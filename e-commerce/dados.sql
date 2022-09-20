
use ecommerce;

insert into clients(CPF,CNPJ,Fname, Minit, Lname, Address)
			values(15975395178,null,'Maria','M','Silva','Rua silva da prata 29, Carangola - Cidade das flores'),
				(15928482421,null,'Matheus','O','Pimentel','Avenida dos expedicionários 963, Centro - Cidade das flores'),
                (75127942794,null,'Ricardo','B','Silva','Avenida Alameda 289, Centro - Cidade das Flores'),
                (01707194121,null,'Diego','S','Santos','Rua Conêgo Bessa 896, Centro - Cidade das flores'),
                (12761235481,null,'Silvana','P','Lopes','Rua Benevides Alves 678, Centro - Cidade das flores'),
                (null,159753951785915,'Ronaldo','G','Lourenço','Rua Conêgo Bessa 910, Centro - Cidade das flores');
                
select * from clients;
-- cpf - (, , , , , )

-- drop table pj;
insert into pf (CPF, birthDate) values
				(15975395178, '1980-12-31'),
                (15928482421, '1979-05-30'),
                (75127942794, '1992-07-16'),
                (01707194121, '1968-11-05'),
                (12761235481, '1974-06-28');
                
insert into pj (CNPJ) values
				(159753951785915);

insert into product(Pname, classification_kids, category, avaliação, size) values
					('Fone de ouvido',false,'Eletrônico','4',null),
                    ('Barbie Elsa',true,'Brinquedo','3',null),
                    ('Body Carters',true,'Vestimenta','5',null),
                    ('Microfone Vedo - Youtuber',false,'Eletrônico','4',null),
                    ('Raquete tênis de mesa',false,'Lazer','4','20x10'),
                    ('Nescau Cereal',false,'Alimento','4',null);

select * from product;

set foreign_key_checks = 0;
insert into orders (idOrderClient, statusPedido, orderDescription, sendValue, paymentCash) values
					(1, default, 'compra via aplicativo', null, 1),
                    (2, default, 'compra via aplicativo', 50, 0),
                    (3, 'Confirmado', null, null, 1),
                    (4, default, 'compra via web',150,0);
                    
select * from orders;


insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						(1,1,2,null),
                        (2,1,1,null),
                        (3,2,1,null);

insert into productStorage (Category, storageLocation, quantity) values
							(default, 'RJ',1000),
                            (default, 'SP',500),
                            ('Confirmado', 'SP',10),
                            (default, 'CE',100),
                            ('Cancelado', 'MG',300),
                            ('Confirmado', 'SP',50),
                            (default, 'CE',20),
                            (default, 'RJ',100);
                            



insert into storageLocation (idLproduct, idLstorage, location) values
							(1,2,'RJ'),
                            (1,4,'CE'),
                            (1,3,'MG'),
                            (3,6,'SP');
select * from storageLocation;


insert into supplier (SocialName, CNPJ, contact) values
					('Almeida e Filhos',12345678945615,'21545875'),
                    ('eletrônicos Silva',8527139637985,'78998521'),
                    ('Mercadinhos Pais e Filhos',789485217995,'21545875'),
                    ('Brinquedos Kids',36925814775365,'85976431');
select * from supplier;


insert into productSupplier(idPsSupplier, idPsProduct, quantity) values
							(1,1,500),
                            (1,2,400),
                            (2,4,633),
                            (3,3,5),
                            (2,5,10);
select * from productSupplier;

insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
					('Tecxh eletronics',null,12345612345612,null,'Rio de Janeiro','1265987845'),
                    ('Botique Durgas',null,78945678945678,null,'Ceará','78998521'),
                    ('Mercadinhos Pais e Filhos',null,null,1234562145,'São Paulo','3265987845'),
                    ('Brinquedos Kids',null,36925814775365,null,'Rio de Janeiro','1245659812');
select * from seller;


insert into productSeller(idPseller, idProduct, prodQuantity) values
						(1,6,80),
                        (2,7,10);
                        
select * from productSeller;