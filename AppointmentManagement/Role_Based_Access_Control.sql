//7. Role-Based Access Control
//Enforce privilege-based access with roles.

//sql

-- Example: Check user role before performing actions
SELECT u.name, r.name AS role 
FROM users u 
JOIN roles r ON u.role_id = r.id
WHERE u.id = 1;  -- Replace 1 with the user ID to check