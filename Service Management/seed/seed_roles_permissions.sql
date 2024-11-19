-- Insert Roles
INSERT INTO roles (role_name)
VALUES 
('Admin'),
('Editor'),
('Viewer');

-- Insert Permissions
INSERT INTO permissions (permission_name)
VALUES 
('Create'),
('Read'),
('Update'),
('Disable');

-- Insert Role Permissions
INSERT INTO role_permissions (role_id, permission_id)
VALUES 
(1, 1),  -- Admin -> Create
(1, 2),  -- Admin -> Read
(1, 3),  -- Admin -> Update
(1, 4),  -- Admin -> Disable
(2, 1),  -- B.A. -> Create
(2, 2),  -- B.A. -> Read
(2, 3),  -- B.A. -> Update
(3, 2);  -- Viewer -> Read

-- Insert Users
INSERT INTO users (username, password)
VALUES 
('john_doe', 'password123'),
('jane_smith', 'password456'),
('alice_jones', 'password789');

-- Insert User Roles
INSERT INTO user_roles (user_id, role_id)
VALUES 
(1, 1),  -- john_doe -> Admin
(2, 2),  -- jane_smith -> B.A
(3, 3);  -- alice_jones -> Viewer
