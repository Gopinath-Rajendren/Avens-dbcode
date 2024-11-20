
CREATE TABLE counselors (
    counselor_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    profile_picture TEXT,
    qualifications TEXT,
    certifications JSONB,
    specialization_areas TEXT[],
    availability JSONB,
    profile_status VARCHAR(20) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
