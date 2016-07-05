CREATE TABLE IF NOT EXISTS  users (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(255),
  role VARCHAR(20),
  created DATETIME DEFAULT NULL,
  modified DATETIME DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  customers (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  lastname VARCHAR(50),
  identification VARCHAR(13),
  email VARCHAR(80),
  package VARCHAR(255),
  price VARCHAR(255),
  device VARCHAR(255),
  cell_phone VARCHAR(255),
  address VARCHAR(255),
  mac_address VARCHAR(255),
  observation VARCHAR(255),
  created DATETIME DEFAULT NULL,
  modified DATETIME DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS invoices (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  customers_id INT(11),
  invoice_no INT(11),
  invoice_date DATETIME DEFAULT NULL,
  amount decimal(6,2) NOT NULL,
  pay_method VARCHAR(25),
  pay_reference VARCHAR(255),
  status_id VARCHAR(7)
);
