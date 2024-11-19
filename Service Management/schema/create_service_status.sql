--Create Service Status Table --
CREATE TABLE service_status (
  id SERIAL PRIMARY KEY NOT NULL,
  service_id INT,
  is_active BOOLEAN,
  reason TEXT,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

COMMENT ON TABLE service_status IS 'Tracks the availability status of each service, allowing services to be enabled or disabled.';

-- Alter Add Foreign Key for service_status(service_id) by Refereces of service(id) --
ALTER TABLE service_status ADD FOREIGN KEY (service_id) REFERENCES services (id);HBOO