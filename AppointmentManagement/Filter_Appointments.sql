-- //5. Filter Appointments
-- //Filter appointments by fields like counselor, client, or date.

sql

-- Filter by counselor
SELECT * FROM appointments WHERE counselor_id = 2;

-- Filter by client
SELECT * FROM appointments WHERE client_id = 3;

-- Filter by date
SELECT * FROM appointments WHERE DATE(scheduled_time) = '2024-11-20';
