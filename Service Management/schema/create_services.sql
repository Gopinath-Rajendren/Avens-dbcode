-- Create Service Table --
CREATE TABLE services (
  id SERIAL PRIMARY KEY NOT NULL,
  type VARCHAR(50) NOT NULL,
  description TEXT,
  duration INT,
  pricing DECIMAL(10,2),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

ALTER TABLE services ADD CONSTRAINT s_P PRIMARY KEY(id);

COMMENT ON TABLE services IS 'Stores details about each counseling service type, including type, duration, and pricing.';
