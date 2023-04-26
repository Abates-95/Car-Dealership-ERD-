CREATE TABLE salesperson (
  salesperson_id INT PRIMARY KEY,
  name VARCHAR(50),
  phone_number VARCHAR(15),
  email VARCHAR(50)
);

CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  phone_number VARCHAR(15),
  email VARCHAR(50)
);

CREATE TABLE car (
  car_id INT PRIMARY KEY,
  make VARCHAR(50),
  model VARCHAR(50),
  year_ INT,
  price DECIMAL(10, 2)
);

CREATE TABLE invoice (
  invoice_id INT PRIMARY KEY,
  salesperson_id INT,
  customer_id INT,
  car_id INT,
  sale_date DATE,
  price DECIMAL(10, 2),
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE service_ticket (
  service_ticket_id INT PRIMARY KEY,
  customer_id INT,
  car_id INT,
  service_date DATE,
  mechanic_id INT,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE service_record (
  service_record_id INT PRIMARY KEY,
  car_id INT,
  service_ticket_id INT,
  service_date DATE,
  description VARCHAR(255),
  parts_cost DECIMAL(10, 2),
  labor_cost DECIMAL(10, 2),
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);

CREATE TABLE mechanic(
  mechanic_id INT PRIMARY KEY,
  name VARCHAR(50),
  present_ticket INT,
  service_record_id INT,
  FOREIGN KEY (present_ticket) REFERENCES service_ticket(service_ticket_id),
  FOREIGN KEY (service_record_id) REFERENCES service_record(service_record_id)
);
