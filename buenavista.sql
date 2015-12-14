CREATE TABLE users (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(255),
  role VARCHAR(20),
  created DATETIME DEFAULT NULL,
  modified DATETIME DEFAULT NULL
);

CREATE TABLE customers (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  lastname VARCHAR(50),
  identification VARCHAR(13),
  package VARCHAR(255),
  price VARCHAR(255),
  device VARCHAR(255),
  registration_date DATETIME DEFAULT NULL,
  cell_phone VARCHAR(255),
  address VARCHAR(255),
  mac_address VARCHAR(255),
  observation VARCHAR(255),
  created DATETIME DEFAULT NULL,
  modified DATETIME DEFAULT NULL
);

CREATE TABLE invoices (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  customers_id INT(11) NOT NULL,
  invoice_no INT(11) NOT NULL,
  invoice_date DATETIME DEFAULT NOT NULL,
  amount decimal(6,2) NOT NULL,
  status_id tinyint(1) NOT NULL,
)
