-- REGIONS DATA

INSERT INTO regions (region_name, city) VALUES
('NCR', 'Makati'),
('NCR', 'Quezon City'),
('NCR', 'Taguig'),
('Region III', 'Angeles'),
('Region IV-A', 'Calamba'),
('Region II', 'Tuguegarao');


-- AGENTS DATA

INSERT INTO agents (region_id, agent_name, agent_email, agent_contact_no) VALUES
(1, 'Maria Santos', 'maria.santos@primeestate.ph', '09171230001'),
(1, 'Carlos Reyes', 'carlos.reyes@primeestate.ph', '09171230002'),
(2, 'Angela Cruz', 'angela.cruz@primeestate.ph', '09171230003'),
(2, 'Mark Valdez', 'mark.valdez@primeestate.ph', '09171230004'),
(3, 'Daniel Tan', 'daniel.tan@primeestate.ph', '09171230005'),
(4, 'John Bautista', 'john.bautista@primeestate.ph', '09171230006'),
(5, 'Grace Villanueva', 'grace.villanueva@primeestate.ph', '09171230007'),
(6, 'Liza Navarro', 'liza.navarro@primeestate.ph', '09171230008');


-- PROPERTIES DATA

INSERT INTO properties (region_id, property_type, building_type, listing_price, listing_date) VALUES
(1, 'Residential', 'Condominium', 8500000, '2024-01-15'),
(1, 'Residential', 'Townhouse', 6200000, '2024-02-10'),
(2, 'Residential', 'Condominium', 7200000, '2024-01-25'),
(2, 'Commercial', 'Office Space', 15000000, '2024-01-30'),
(3, 'Residential', 'Condominium', 9800000, '2024-02-18'),
(3, 'Residential', 'Townhouse', 7500000, '2024-03-01'),
(4, 'Residential', 'House and Lot', 4500000, '2024-03-05'),
(4, 'Industrial', 'Warehouse', 12000000, '2024-03-08'),
(5, 'Residential', 'House and Lot', 5200000, '2024-03-10'),
(5, 'Residential', 'Townhouse', 4800000, '2024-03-12'),
(6, 'Residential', 'House and Lot', 3200000, '2024-03-15'),
(6, 'Agricultural', 'Land', 2000000, '2024-03-18');



-- CLIENTS DATA

INSERT INTO clients (client_name, client_email, client_contact_no, client_address) VALUES
('Juan Dela Cruz', 'juan.delacruz@email.ph', '09190000001', 'Quezon City'),
('Anna Lim', 'anna.lim@email.ph', '09190000002', 'Makati'),
('Mark Tan', 'mark.tan@email.ph', '09190000003', 'Pasig'),
('Christine Uy', 'christine.uy@email.ph', '09190000004', 'Taguig'),
('Robert Villanueva', 'robert.v@email.ph', '09190000005', 'Angeles'),
('David Ong', 'david.ong@email.ph', '09190000006', 'Makati'),
('Michelle Tan', 'michelle.tan@email.ph', '09190000007', 'Calamba'),
('Paolo Garcia', 'paolo.g@email.ph', '09190000008', 'Quezon City'),
('Sarah Lopez', 'sarah.lopez@email.ph', '09190000009', 'Taguig'),
('Kevin Mendoza', 'kevin.m@email.ph', '09190000010', 'Tuguegarao');


-- SALES DATA


INSERT INTO sales (agent_id, client_id, property_id, sale_date, sale_amount) VALUES
(1, 2, 1, '2024-03-01', 8300000),
(2, 1, 2, '2024-03-10', 6100000),
(3, 3, 3, '2024-03-15', 7000000),
(3, 4, 4, '2024-03-18', 14800000),
(5, 6, 5, '2024-03-22', 9600000),
(5, 7, 6, '2024-03-25', 7400000),
(6, 5, 7, '2024-04-01', 4400000),
(6, 8, 8, '2024-04-05', 11800000),
(7, 9, 9, '2024-04-08', 5100000),
(7, 10, 10, '2024-04-12', 4700000),
(8, 5, 11, '2024-04-18', 3150000);
