
CREATE TABLE counselor_performance (
    performance_id SERIAL PRIMARY KEY,
    counselor_id INT REFERENCES counselors(counselor_id) ON DELETE CASCADE,
    total_sessions INT DEFAULT 0,
    completed_sessions INT DEFAULT 0,
    canceled_sessions INT DEFAULT 0,
    average_rating DECIMAL(3, 2),
    warning_flags INT DEFAULT 0,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
