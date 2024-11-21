CREATE TABLE suspensions (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    user_type VARCHAR(50) CHECK (user_type IN ('client', 'counsellor')),
    reason TEXT,
    notified BOOLEAN DEFAULT FALSE,
    suspended_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
