//2. Insert Sample Data
//Add some initial data for testing purposes.

sql
-- Insert roles
INSERT INTO roles (name) VALUES ('Admin'), ('Counselor'), ('Client');

-- Insert users
INSERT INTO users (name, email, role_id) VALUES 
('Admin User', 'admin@example.com', 1),
('Counselor A', 'counselorA@example.com', 2),
('Client X', 'clientX@example.com', 3);

-- Insert appointments
INSERT INTO appointments (client_id, counselor_id, scheduled_time, notes) VALUES
(3, 2, '2024-11-20 10:00:00', 'Initial consultation'),
(3, 2, '2024-11-22 14:00:00', 'Follow-up session');