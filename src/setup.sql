DROP TABLE IF EXISTS organization CASCADE;

-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

-- ========================================
-- Insert sample data: Organizations
-- ========================================
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),

('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),

('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');

CREATE TABLE service_project (
    project_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    location VARCHAR(255),
    date DATE NOT NULL,
    CONSTRAINT fk_organization
        FOREIGN KEY (organization_id)
        REFERENCES organization(organization_id)
        ON DELETE CASCADE
);

INSERT INTO service_project (organization_id, title, description, location, date) VALUES
-- Organization 1
(1, 'Park Cleanup', 'Cleaning trash and debris from park', 'Salt Lake City', '2026-06-10'),
(1, 'Food Drive', 'Collecting food for families in need', 'West Valley City', '2026-06-15'),
(1, 'Tree Planting', 'Planting trees in urban areas', 'Murray', '2026-06-20'),
(1, 'Clothing Donation', 'Collecting clothes for shelters', 'Taylorsville', '2026-06-25'),
(1, 'Community Gardening', 'Building a shared garden', 'Salt Lake City', '2026-06-30'),

-- Organization 2
(2, 'Lake Cleanup', 'Removing trash from lakefront', 'Great Salt Lake', '2026-07-05'),
(2, 'Blood Donation Camp', 'Organizing blood donation event', 'Salt Lake City', '2026-07-10'),
(2, 'School Supplies Drive', 'Providing supplies to students', 'West Jordan', '2026-07-15'),
(2, 'Senior Assistance', 'Helping elderly with errands', 'Midvale', '2026-07-20'),
(2, 'Meal Preparation', 'Cooking meals for homeless', 'Salt Lake City', '2026-07-25'),

-- Organization 3
(3, 'Animal Shelter Help', 'Volunteering at animal shelter', 'South Salt Lake', '2026-08-01'),
(3, 'Recycling Initiative', 'Promoting recycling awareness', 'Salt Lake City', '2026-08-05'),
(3, 'Youth Mentorship', 'Guiding teens in career skills', 'West Valley City', '2026-08-10'),
(3, 'Neighborhood Watch', 'Improving local safety', 'Kearns', '2026-08-15'),
(3, 'Health Fair', 'Free health checkups for community', 'Salt Lake City', '2026-08-20');

SELECT * FROM service_project;