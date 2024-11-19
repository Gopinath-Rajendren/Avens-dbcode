//3. View Scheduled and Completed Appointments
//Retrieve appointments based on their status.

sql

-- View all scheduled appointments
SELECT * FROM appointments WHERE status = 'Scheduled';

-- View all completed appointments
SELECT * FROM appointments WHERE status = 'Completed';

-- View all appointments
SELECT * FROM appointments;