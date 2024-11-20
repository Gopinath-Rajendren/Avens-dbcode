
CREATE TABLE sessions (
    session_id SERIAL PRIMARY KEY,
    counselor_id INT REFERENCES counselors(counselor_id) ON DELETE CASCADE,
    client_id INT NOT NULL,
    session_date DATE NOT NULL,
    session_time TIME NOT NULL,
    status VARCHAR(20) DEFAULT 'scheduled',
    rating INT CHECK (rating BETWEEN 1 AND 5),
    feedback TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
