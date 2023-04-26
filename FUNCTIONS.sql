CREATE OR REPLACE FUNCTION add_customer (_customer_id INTEGER, _name VARCHAR, phone_number VARCHAR, email VARCHAR)
RETURNS VOID
AS $MAIN$
BEGIN
  INSERT INTO customer (customer_id, name, phone_number, email)
  VALUES (_customer_id, _name, phone_number, email);
END;
$MAIN$
LANGUAGE plpgsql; 

-- Call Function
SELECT add_customer(4, 'John Smith', '555-1234', 'john.smith@example.com');

-- Check new customer was added
SELECT *
FROM customer 
WHERE customer_id = 4

CREATE OR REPLACE FUNCTION add_salesperson (salesperson_id_ INTEGER, name_ VARCHAR, phone_number_ VARCHAR, email_ VARCHAR)
RETURNS VOID
AS $MAIN$
BEGIN
  INSERT INTO salesperson (salesperson_id, name, phone_number, email)
  VALUES (salesperson_id_, name_, phone_number_, email_);
END;
$MAIN$
LANGUAGE plpgsql

-- Call Function
SELECT add_salesperson(4, 'Jane Doe', '555-5678', 'jane.doe@example.com');

-- Check new sales person was added
SELECT *
FROM salesperson
WHERE salesperson_id = 4



