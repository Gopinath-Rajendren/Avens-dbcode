
CREATE TABLE payouts (
    payout_id SERIAL PRIMARY KEY,
    counselor_id INT REFERENCES counselors(counselor_id) ON DELETE CASCADE,
    total_sessions INT DEFAULT 0,
    total_earnings DECIMAL(10, 2) DEFAULT 0.00,
    platform_fees DECIMAL(10, 2) DEFAULT 0.00,
    final_payout DECIMAL(10, 2) DEFAULT 0.00,
    payout_status VARCHAR(20) DEFAULT 'pending',
    payout_date TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
