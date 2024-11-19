
-- Seed data for service_status
INSERT INTO service_status (service_id, is_active, reason, updated_at)
VALUES
(1, TRUE, NULL, CURRENT_TIMESTAMP),
(2, TRUE, NULL, CURRENT_TIMESTAMP),
(3, FALSE, 'Under maintenance', CURRENT_TIMESTAMP);
