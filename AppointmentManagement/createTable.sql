//1. Create Tables
//Start by defining the database schema.

sql

CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role_id INT REFERENCES roles(id)
);

CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    client_id INT REFERENCES users(id),
    counselor_id INT REFERENCES users(id),
    scheduled_time TIMESTAMP NOT NULL,
    status VARCHAR(20) CHECK (status IN ('Scheduled', 'Completed', 'Cancelled', 'Rescheduled')) DEFAULT 'Scheduled',
    notes TEXT
);