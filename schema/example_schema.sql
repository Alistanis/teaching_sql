

CREATE TABLE items
	(`id` int, `price` float, `description` varchar(55), `name` varchar(10), `manufacturer` varchar(10))
;

CREATE TABLE purchases
	(`id` int, `dt` DATE, `total_price` float)
;

CREATE TABLE purchased_items
	(`id` int, `purchase_id` int, `item_id` int)
;

INSERT INTO items
    (`price`, `description`, `name`, `manufacturer`)
VALUES
     (50.00, 'Bluetooth headphones', 'Sony BT', 'Sony'),
     (40.00, 'Human software engineer', 'Daimeng', 'China'),
     (28.00, 'Master Splinter', 'Cooooop', 'Ireland'),
     (200.00, 'God', 'Kyle' , 'USA')
     ;

INSERT INTO purchases
    (`id`, `dt`, `total_price`)
VALUES
    (1, date('now'), 90.00),
    (2, date('now'), 28.00),
    (3, date('now'), 200.00),
    (4, date('now'), 68.00)
    ;

INSERT INTO purchased_items
    (`purchase_id`, `item_id`)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 2),
    (4, 3)
    ;