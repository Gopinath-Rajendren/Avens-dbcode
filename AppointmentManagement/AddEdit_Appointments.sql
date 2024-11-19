//4. Add/Edit Appointments
//Add New Appointment


sql
INSERT INTO appointments (client_id, counselor_id, scheduled_time, notes)
VALUES (3, 2, '2024-11-25 15:00:00', 'Session with client feedback');



 ///Edit Existing Appointment

sql
Copy code
UPDATE appointments 
SET scheduled_time = '2024-11-26 10:00:00', status = 'Rescheduled'
WHERE id = 1;