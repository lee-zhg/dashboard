--Create
CREATE TABLE sales
( sales_id INT NOT NULL generated always as identity (start with 1000, increment by 1), CONSTRAINT sales_pk PRIMARY KEY (sales_id),
amount DECIMAL(15,2) NOT NULL,
period VARCHAR(50) NOT NULL,
region VARCHAR(50) NOT NULL,
sales_person VARCHAR(50) NOT NULL
);

CREATE TABLE inventory
( inventory_id INT NOT NULL generated always as identity (start with 1000, increment by 1), CONSTRAINT inventory_pk PRIMARY KEY (inventory_id),
product VARCHAR(50) NOT NULL,
quatity DECIMAL(15,2) NOT NULL,
location VARCHAR(50) NOT NULL,
region VARCHAR(50) NOT NULL
)
--End of Create