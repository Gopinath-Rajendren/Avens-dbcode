
-- Seed data for pricing
INSERT INTO pricing (service_id, tier_name, price, subscription, promo_code, discount)
VALUES 
(1, 'Basic', 50.00, 'One-time', 'PROMO10', 10.00),
(1, 'Premium', 90.00, 'Monthly', 'PROMO20', 20.00),
(2, 'Standard', 100.00, 'One-time', 'AUDIO5', 5.00),
(3, 'Premium+', 150.00, 'Monthly', 'VIDEO15', 15.00);
