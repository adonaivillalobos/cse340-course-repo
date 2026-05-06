CREATE TABLE organization (
	organization_id SERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	description TEXT NOT NULL,
	contact_email VARCHAR (255) NOT NULL,
	logo_filename VARCHAR (225) NOT NULL
);

INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');

CREATE TABLE projects (
	project_id SERIAL PRIMARY KEY,
	organization_id INT NOT NULL,
	project_title VARCHAR(250) NOT NULL,
	project_des TEXT NOT NULL,
	project_loc VARCHAR(250) NOT NULL,
	project_date DATE,

	FOREIGN KEY (organization_id) REFERENCES organization(organization_id)
);

INSERT INTO projects (organization_id, project_title, project_des, project_loc, project_date)
VALUES
-- Organization 1
(1, 'Build Community Park', 'Help build a park for families', 'South Jordan', '2026-06-01'),
(1, 'Renovate Homes', 'Repair homes for low-income families', 'Provo', '2026-06-10'),
(1, 'Playground Upgrade', 'Install new playground equipment', 'South Jordan', '2026-06-20'),
(1, 'Community Center Painting', 'Paint and restore community center', 'Logan', '2026-07-01'),
(1, 'Bridge Repair', 'Assist in small bridge repairs', 'South Jordan', '2026-07-10'),

-- Organization 2
(2, 'Urban Farming Project', 'Grow vegetables in urban areas', 'Salt Lake City', '2026-07-15'),
(2, 'Community Garden Setup', 'Build and plant a shared garden', 'South Jordan', '2026-07-22'),
(2, 'Tree Planting Event', 'Plant trees in public parks', 'Ogden', '2026-08-01'),
(2, 'Farmers Market Support', 'Help local farmers sell produce', 'South Jordan', '2026-08-10'),
(2, 'Composting Workshop', 'Teach composting techniques', 'Layton', '2026-08-18'),

-- Organization 3
(3, 'Food Drive', 'Collect and distribute food donations', 'South Jordan', '2026-08-25'),
(3, 'Clothing Donation Event', 'Gather clothes for those in need', 'Provo', '2026-09-01'),
(3, 'Community Cleanup', 'Clean parks and neighborhoods', 'South Jordan', '2026-09-10'),
(3, 'Senior Assistance Program', 'Help elderly residents with tasks', 'Logan', '2026-09-18'),
(3, 'Holiday Volunteer Event', 'Organize holiday support activities', 'South Jordan', '2026-09-25');