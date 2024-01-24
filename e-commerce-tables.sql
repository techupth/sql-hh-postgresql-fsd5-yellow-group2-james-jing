-- Start writing code here
CREATE TABLE users (
  users_id INT UNIQUE PRIMARY KEY GENERATED ALWAYS AS IDENTITY UNIQUE NOT NULL,
  username_id VARCHAR ( 255 ) UNIQUE NOT NULL,
  password_id VARCHAR ( 255 ) NOT NULL,
  created_at_id TIMESTAMPTZ ( 255 ) NOT NULL,
  created_on TIMESTAMPTZ UNIQUE NOT NULL,
);

CREATE TABLE products (
	products_id INT UNIQUE PRIMARY KEY GENERATED ALWAYS AS IDENTITY UNIQUE NOT NULL,
	name_id VARCHAR(255) UNIQUE NOT NULL,
	description TEXT NOT NULL,
	price_id NUMERIC(10,2),
	created_at_id TIMESTAMPTZ current time UNIQUE,
);

CREATE TABLE categories (
	category_id INT UNIQUE PRIMARY KEY GENERATED ALWAYS AS IDENTITY UNIQUE NOT NULL,
	name_id VARCHAR(255) UNIQUE NOT NULL,
	created_at_id TIMESTAMPTZ current time UNIQUE,
);

CREATE TABLE product_categories (
	product_category_id INT UNIQUE PRIMARY KEY GENERATED ALWAYS AS IDENTITY UNIQUE NOT NULL,
	product_id INT references products(product_id UNIQUE NOT NULL,
	category_id INT references categories(category_id) UNIQUE NOT NULL,
);