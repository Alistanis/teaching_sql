CREATE TABLE items
	(`id` int, `price` float, `description_color` varchar(55),`description_style` varchar(55), `name` varchar(10))
;

CREATE TABLE sales
	(`sales_id` int, `dt` DATE, `total_price` float, `customer_id` varchar(55))
;

CREATE TABLE sales_items
	(`id` int, `sales_id` int, `item_id` int, `volume` int)
;
INSERT INTO items
	(`price`, `description_color`, `description_style`, `name`)
VALUES
	(25.00, 'Green, Yellow, Red', 'Throw Up Style', 'Cosby')
	(30.00, 'Black, White', 'Horizontal Stripes', 'H. Striped')
	(30.00, 'Black, White', 'Vertical Stripes', 'V. Striped')
	(45.00, 'Yellow, Green, Black' 'Diamonds', 'Da Fuqboi')
	(63.00, 'Navy Blue', "Solid, Buttons", 'The Sailor')
	(100.00, 'Tan', 'Solid', 'Classic')
	(75.00, 'Gray, Black, White', 'Diamonds', 'The Coop' )
	(15.00, 'Neon Pink, White', 'Vertical Stripes', 'Fetch')
;
INSERT INTO sales
	(`sales_id`, `dt`, `total_price`, `customer_id`)
VALUES
	(1, date('now'), 6000.00, 'Macys')
	(2, date('now'), 5000.00, 'JCPenney')
	(3, date('now'), 750.00, 'Walmart')
	(4, date('now'), 17750.00, 'Nordstroms')
	(5, date('now'), 25050.00, 'High Fashion Institute')
;
INSERT INTO sales_items
	(`sales_id`, `item_id`, `volume`)
VALUES
	(1, 2, 100)
	(1, 3, 100)
	(2, 1, 200)
	(3, 8, 50)
	(4, 5, 100)
	(4, 1, 50)
	(4, 4, 200)
	(4, 7, 100)
	(5, 5, 100)
	(5, 7, 150)
	(5, 6, 100)
;
