-- Queries relacionadas aos dados adicionados
use ecommerce;

select concat(Fname,' ',Minit,' ',Lname) as Client, idOrderClient as Request, statusPedido as Status from clients c, orders o where c.idClient = idOrderClient; 

select * from clients c, orders o 
			where c.idClient = idOrderClient;



select * from productOrder;


-- Algum vendedor é fornecedor?

select s.SocialName, s.CNPJ from seller s
		inner join supplier on idSeller = idSupplier
        group by idSupplier;

-- recuperação de pedidos com produtos associados

select * from clients c
		inner join orders o on c.idClient = o.idOrderClient
        inner join productOrder p on p.idPOorder = o.idPedido
        group by idClient;
        
        
        
-- quantos pedidos foram realizados pelos clientes


select c.idClient, Fname, count(*) as Number_of_orders from clients c 
			inner join orders o on c.idClient = o.idOrderClient
            group by idClient;
            
            
            
-- Relação de produto fornecedor e estoque

select SocialName, CNPJ, contact, quantity from supplier s
		inner join productsupplier on idSupplier = idPsSupplier
        group by idPsProduct;
        
        
        
-- Relação de nomes dos fornecedores e nomes dos produtos

select SocialName, CNPJ, Pname as Nome_do_produto from supplier s
		inner join product on idSupplier = idProduct
        group by idProduct;
        
        
