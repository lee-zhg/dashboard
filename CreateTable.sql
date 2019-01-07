--Create
CREATE TABLE sales
( sales_id VARCHAR(30) NOT NULL, CONSTRAINT sales_pk PRIMARY KEY (sales_id),
amount DECIMAL(15,2) NOT NULL,
period VARCHAR(50) NOT NULL,
region VARCHAR(50) NOT NULL,
sales_person VARCHAR(50) NOT NULL
);

CREATE TABLE inventory
( inventory_id VARCHAR(50) NOT NULL, CONSTRAINT     inventory_pk PRIMARY KEY (inventory_id),
product VARCHAR(50) NOT NULL,
quatity DECIMAL(15,2) NOT NULL,
location VARCHAR(50) NOT NULL,
region VARCHAR(50) NOT NULL
)
--End of Create