-- Add a new column to services table for category
ALTER TABLE services
ADD COLUMN category VARCHAR(50) DEFAULT 'General';

-- Add a new column to pricing table for discount expiry date
ALTER TABLE pricing
ADD COLUMN discount_expiry DATE;
