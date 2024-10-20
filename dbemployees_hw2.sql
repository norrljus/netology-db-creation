CREATE TABLE IF NOT EXISTS Employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	dept VARCHAR(20) NOT NULL,
	id_manager INT REFERENCES employee(id)
);
