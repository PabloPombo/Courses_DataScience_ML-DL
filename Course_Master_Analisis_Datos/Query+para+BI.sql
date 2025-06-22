select
	t1.orderNumber as "factura",
	t1.orderDate as "fecha",
	t1.shippedDate as "fecha de entrega",
	t2.productCode,
	t3.productName as "producto",
	t3.productLine as "categoria",
    t3.buyPrice as "precio compra",
	t2.priceEach as "precio",
	t2.quantityOrdered as "cantidad",
	t1.status,
	t1.customerNumber,
	t4.customerName as "cliente",
    t4.city as "ciudad",
	t4.country as "pais",
	t5.employeeNumber,
	concat(t5.firstName,' ', t5.lastName) as vendedor
from orders as t1
	join orderdetails as t2 on t1.orderNumber=t2.orderNumber
	join products as t3 on t2.productCode=t3.productCode
	join customers as t4 on t1.customerNumber=t4.customerNumber
	join employees as t5 on t4.salesRepEmployeeNumber=t5.employeeNumber