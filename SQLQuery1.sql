
SELECT data.main_part_number, data.manufacturer, data.category, data.origin, price.price, deposit.deposit, price+deposit AS total, quantity.quantity, quantity.warehouse

FROM ((((data
INNER JOIN price ON data.part_number = price.part_number)
INNER JOIN deposit ON data.part_number = deposit.part_number)
INNER JOIN quantity ON data.part_number = quantity.part_number)
INNER JOIN weight ON data.part_number = weight.part_number)


WHERE warehouse LIKE '3'
OR warehouse LIKE '9'
OR warehouse LIKE 'A'
OR warehouse LIKE 'J'
OR warehouse LIKE 'H'

