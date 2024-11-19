-- Create Pricing Table --
CREATE TABLE pricing (
  id SERIAL PRIMARY KEY NOT NULL,
  service_id INT,
  tier_name VARCHAR(50),
  price DECIMAL(10,2),
  subscription VARCHAR(20),
  promo_code VARCHAR(20),
  discount DECIMAL(5,2),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

COMMENT ON TABLE pricing IS 'Stores different price tiers and subscription models for each service, with support for promo codes and discounts.';

ALTER TABLE ADD CONSTRAINT p_P PRIMARY KEY(id);
-- Alter Add Foreign Key for pricing(service_id) by Refereces of service(id) --
ALTER TABLE pricing ADD CONSTRAINT p_FK FOREIGN KEY (service_id) REFERENCES services (id);
