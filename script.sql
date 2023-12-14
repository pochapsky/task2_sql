CREATE TABLE "CUSTOMERS" (
	"id"	INTEGER,
	"name"	TEXT,
	"surname"	TEXT,
	"age"	INTEGER,
	"phone_number"	TEXT,
	PRIMARY KEY("id")
);

CREATE TABLE "ORDERS" (
	"id"	INTEGER,
	"date"	TEXT,
	"customer_id"	INTEGER,
	"product_name"	TEXT,
	"amount"	INTEGER,
	PRIMARY KEY("id")
)



INSERT INTO CUSTOMERS (name, surname,age,phone_number) VALUES ('alexey', 'Yakeshev', 44, 75157895621);
INSERT INTO CUSTOMERS (name, surname,age,phone_number) VALUES ('Alice', 'Selezneva', 23, 79157895352);
INSERT INTO CUSTOMERS (name, surname,age,phone_number) VALUES ('Dmitriy', 'Avoskin', 50, 79157895352);
INSERT INTO CUSTOMERS (name, surname,age,phone_number) VALUES ('VASILIY', 'ALIBABAEVITCH', 27, 79157895352);
INSERT INTO CUSTOMERS (name, surname,age,phone_number) VALUES ('Alexey', 'Akunin', 23, 79157895352);



INSERT INTO ORDERS (date, customer_id,product_name,amount) VALUES ('2023-05-01', 1, "bread", 10);
INSERT INTO ORDERS (date, customer_id,product_name,amount) VALUES ('2023-12-12', 3, "present", 1);
INSERT INTO ORDERS (date, customer_id,product_name,amount) VALUES ('2023-01-05', 5, "flashlight", 2);
INSERT INTO ORDERS (date, customer_id,product_name,amount) VALUES ('2023-11-20', 2, "fruits", 3);
INSERT INTO ORDERS (date, customer_id,product_name,amount) VALUES ('2023-12-22', 4, "Meat", 2);


SELECT product_name,name  FROM ORDERS  
JOIN CUSTOMERS ON  ORDERS.customer_id=CUSTOMERS.id
WHERE  CUSTOMERS.name= 'alexey' COLLATE NOCASE;