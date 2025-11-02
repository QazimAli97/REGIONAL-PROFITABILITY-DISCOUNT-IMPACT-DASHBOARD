select * from Sales
select * from Customer

select Region,Category,
Round(avg(Discount) * 100,2)[AvgDiscount],
Round(AVG(Profit),2)[AvgProfit],
case
		WHEN AVG(Discount) > 0.15 AND AVG(Profit) < 20 THEN 'Discount Reduces Profit'
        
        ELSE 'Normal/Healthy Profit'
	End as ImpactFlag
from customer c
inner join sales s
on c.Customer_ID = s.Customer_ID
inner join Product p
on s.Product_ID = p.Product_ID
group by Category,Region
order by Region,Category,AvgProfit



