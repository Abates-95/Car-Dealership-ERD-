INSERT INTO salesperson (salesperson_id, name, phone_number, email)
VALUES (1, 'John Smith', '555-1234', 'johnsmith@example.com'),
       (2, 'Jane Doe', '555-5678', 'janedoe@example.com'),
       (3, 'Bob Johnson', '555-9012', 'bobjohnson@example.com');

INSERT INTO customer (customer_id, name, phone_number, email)
VALUES (1, 'Mike Brown', '555-1111', 'mikebrown@example.com'),
       (2, 'Lisa Green', '555-2222', 'lisagreen@example.com'),
       (3, 'Tom Wilson', '555-3333', 'tomwilson@example.com');

INSERT INTO car (car_id, make, model, year_, price)
VALUES (1, 'Toyota', 'Camry', 2019, 25000.00),
       (2, 'Honda', 'Civic', 2020, 22000.00),
       (3, 'Ford', 'F-150', 2021, 40000.00);

INSERT INTO invoice (invoice_id, salesperson_id, customer_id, car_id, sale_date, price)
VALUES (1, 1, 1, 1, '2022-01-01', 25000.00),
       (2, 2, 2, 2, '2022-02-01', 22000.00),
       (3, 3, 3, 3, '2022-03-01', 40000.00);

INSERT INTO service_ticket (service_ticket_id, customer_id, car_id, service_date, mechanic_id)
VALUES (1, 1, 1, '2022-04-01', 1),
       (2, 2, 2, '2022-05-01', 2),
       (3, 3, 3, '2022-06-01', 3);

INSERT INTO service_record (service_record_id, car_id, service_ticket_id, service_date, description, parts_cost, labor_cost)
VALUES (1, 1, 1, '2022-04-01', 'Oil Change', 50.00, 75.00),
       (2, 2, 2, '2022-05-01', 'Brake Replacement', 150.00, 200.00),
       (3, 3, 3, '2022-06-01', 'Tire Rotation', 25.00, 50.00);

INSERT INTO mechanic(mechanic_id, name, present_ticket, service_record_id)
VALUES (1, 'Mark Makson', 1, 1),
       (2, 'Tony Luberto', 2, 2),
       (3, 'Phil Williamson', 3, 3);
      
SELECT * FROM car
SELECT * FROM customer
SELECT * FROM invoice
SELECT * FROM mechanic
SELECT * FROM salesperson
SELECT * FROM service_record
SELECT * FROM service_ticket
