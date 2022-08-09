ALTER TABLE deposit
ADD final_price money;

SELECT data.main_part_number, data.manufacturer, data.category, data.origin, price.price, deposit.deposit, deposit.final_price, quantity.quantity, quantity.warehouse

FROM (((data
INNER JOIN price ON data.part_number = price.part_number)
INNER JOIN deposit ON price.part_number = deposit.part_number)
INNER JOIN quantity ON deposit.part_number = quantity.part_number)



WHERE warehouse LIKE '3'
OR warehouse LIKE '9'
OR warehouse LIKE 'A'
OR warehouse LIKE 'J'
OR warehouse LIKE 'H'


