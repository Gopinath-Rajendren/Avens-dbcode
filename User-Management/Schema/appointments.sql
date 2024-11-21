CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    client_id INT REFERENCES clients(id),
    counsellor_id INT REFERENCES counsellors(id),
    appointment_date TIMESTAMP NOT NULL,
    status VARCHAR(50) DEFAULT 'scheduled',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
