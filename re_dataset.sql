/* 
  REAL ESTATE ANALYTICS — SEED DATA
  Database: re_agency_db
  Coverage: 2023-01-01 to 2024-12-31 (2 full years)
  Records: 6 regions, 20 agents, 80 properties, 50 clients, ~60 sales
*/

-- ===========
-- REGIONS
-- ===========
INSERT INTO regions (region_name, city) VALUES
('NCR', 'Makati'),
('NCR', 'Quezon City'),
('NCR', 'Taguig'),
('Region III', 'Angeles'),
('Region IV-A', 'Calamba'),
('Region II', 'Tuguegarao');

-- ===========
-- AGENTS
-- Regions 1-3 (NCR) have more agents — reflects market concentration
-- commission_rate: 2-5% is standard PH real estate
-- ===========
INSERT INTO agents (region_id, agent_name, agent_email, agent_contact_no, commission_rate) VALUES
-- Region 1 (Makati)
(1, 'Maria Santos',     'maria.santos@primeestate.ph',     '09171230001', 3.50),
(1, 'Carlos Reyes',     'carlos.reyes@primeestate.ph',     '09171230002', 3.00),
(1, 'Patricia Lim',     'patricia.lim@primeestate.ph',     '09171230003', 4.00),
(1, 'Jose Ramos',       'jose.ramos@primeestate.ph',       '09171230004', 2.50),
-- Region 2 (Quezon City)
(2, 'Angela Cruz',      'angela.cruz@primeestate.ph',      '09171230005', 3.00),
(2, 'Mark Valdez',      'mark.valdez@primeestate.ph',      '09171230006', 3.50),
(2, 'Rica Domingo',     'rica.domingo@primeestate.ph',     '09171230007', 2.75),
(2, 'Efren Bautista',   'efren.bautista@primeestate.ph',   '09171230008', 3.00),
-- Region 3 (Taguig)
(3, 'Daniel Tan',       'daniel.tan@primeestate.ph',       '09171230009', 4.00),
(3, 'Kristine Aquino',  'kristine.aquino@primeestate.ph',  '09171230010', 3.75),
(3, 'Ramon Castillo',   'ramon.castillo@primeestate.ph',   '09171230011', 3.00),
-- Region 4 (Angeles)
(4, 'John Bautista',    'john.bautista@primeestate.ph',    '09171230012', 2.50),
(4, 'Luisa Reyes',      'luisa.reyes@primeestate.ph',      '09171230013', 2.75),
-- Region 5 (Calamba)
(5, 'Grace Villanueva', 'grace.villanueva@primeestate.ph', '09171230014', 2.50),
(5, 'Edgar Flores',     'edgar.flores@primeestate.ph',     '09171230015', 2.75),
-- Region 6 (Tuguegarao)
(6, 'Liza Navarro',     'liza.navarro@primeestate.ph',     '09171230016', 2.50),
(6, 'Bernard Ocampo',   'bernard.ocampo@primeestate.ph',   '09171230017', 2.25),
-- Floaters (senior agents covering multiple high-value deals in NCR)
(1, 'Veronica Sy',      'veronica.sy@primeestate.ph',      '09171230018', 5.00),
(2, 'Armand dela Cruz', 'armand.delacruz@primeestate.ph',  '09171230019', 4.50),
(3, 'Cecile Montano',   'cecile.montano@primeestate.ph',   '09171230020', 5.00);

-- ===========
-- PROPERTIES
-- 80 properties across all regions
-- NCR listings are significantly higher priced (reflects market reality)
-- Mix of sold/active/pending status
-- ===========
INSERT INTO properties (region_id, property_type, building_type, listing_price, listing_date, property_status) VALUES
-- === MAKATI (region 1) ===
(1, 'Residential',  'Condominium',   8500000.00,  '2023-01-15', 'sold'),
(1, 'Residential',  'Townhouse',     6200000.00,  '2023-02-10', 'sold'),
(1, 'Commercial',   'Office Space',  22000000.00, '2023-02-20', 'sold'),
(1, 'Residential',  'Condominium',   9800000.00,  '2023-04-05', 'sold'),
(1, 'Residential',  'Condominium',   11500000.00, '2023-06-01', 'sold'),
(1, 'Commercial',   'Retail Space',  18500000.00, '2023-07-15', 'sold'),
(1, 'Residential',  'Condominium',   7800000.00,  '2023-09-01', 'sold'),
(1, 'Residential',  'Townhouse',     8900000.00,  '2023-10-10', 'sold'),
(1, 'Commercial',   'Office Space',  25000000.00, '2024-01-10', 'unsold'),
(1, 'Residential',  'Condominium',   13500000.00, '2024-02-01', 'unsold'),
(1, 'Residential',  'Condominium',   10200000.00, '2024-03-15', 'reserved'),
(1, 'Commercial',   'Retail Space',  16000000.00, '2024-04-01', 'unsold'),
(1, 'Residential',  'Townhouse',     9200000.00,  '2024-05-10', 'unsold'),
-- === QUEZON CITY (region 2) ===
(2, 'Residential',  'Condominium',   7200000.00,  '2023-01-25', 'sold'),
(2, 'Commercial',   'Office Space',  15000000.00, '2023-01-30', 'sold'),
(2, 'Residential',  'Townhouse',     5400000.00,  '2023-03-12', 'sold'),
(2, 'Residential',  'House and Lot', 8200000.00,  '2023-05-05', 'sold'),
(2, 'Commercial',   'Retail Space',  12000000.00, '2023-06-20', 'sold'),
(2, 'Residential',  'Condominium',   6800000.00,  '2023-08-01', 'sold'),
(2, 'Residential',  'House and Lot', 9500000.00,  '2023-09-15', 'sold'),
(2, 'Residential',  'Condominium',   7500000.00,  '2023-11-01', 'sold'),
(2, 'Commercial',   'Office Space',  17500000.00, '2024-01-20', 'unsold'),
(2, 'Residential',  'Townhouse',     6100000.00,  '2024-02-15', 'reserved'),
(2, 'Residential',  'Condominium',   8000000.00,  '2024-03-01', 'unsold'),
(2, 'Residential',  'House and Lot', 11000000.00, '2024-04-10', 'unsold'),
-- === TAGUIG (region 3) ===
(3, 'Residential',  'Condominium',   9800000.00,  '2023-02-18', 'sold'),
(3, 'Residential',  'Townhouse',     7500000.00,  '2023-03-01', 'sold'),
(3, 'Commercial',   'Office Space',  28000000.00, '2023-04-10', 'sold'),
(3, 'Residential',  'Condominium',   12500000.00, '2023-05-20', 'sold'),
(3, 'Residential',  'Condominium',   10800000.00, '2023-07-01', 'sold'),
(3, 'Commercial',   'Retail Space',  19500000.00, '2023-08-15', 'sold'),
(3, 'Residential',  'Townhouse',     8800000.00,  '2023-10-01', 'sold'),
(3, 'Residential',  'Condominium',   14000000.00, '2023-11-15', 'sold'),
(3, 'Commercial',   'Office Space',  32000000.00, '2024-01-05', 'unsold'),
(3, 'Residential',  'Condominium',   11200000.00, '2024-02-20', 'reserved'),
(3, 'Residential',  'Townhouse',     9500000.00,  '2024-03-10', 'unsold'),
(3, 'Residential',  'Condominium',   15500000.00, '2024-04-25', 'unsold'),
-- === ANGELES (region 4) ===
(4, 'Residential',  'House and Lot', 4500000.00,  '2023-03-05', 'sold'),
(4, 'Industrial',   'Warehouse',     12000000.00, '2023-03-08', 'sold'),
(4, 'Residential',  'House and Lot', 3800000.00,  '2023-05-15', 'sold'),
(4, 'Residential',  'Townhouse',     3200000.00,  '2023-07-01', 'sold'),
(4, 'Commercial',   'Retail Space',  7500000.00,  '2023-08-20', 'sold'),
(4, 'Industrial',   'Warehouse',     9800000.00,  '2023-10-05', 'sold'),
(4, 'Residential',  'House and Lot', 5100000.00,  '2024-01-15', 'unsold'),
(4, 'Residential',  'Townhouse',     4200000.00,  '2024-02-28', 'reserved'),
(4, 'Industrial',   'Warehouse',     11500000.00, '2024-04-01', 'unsold'),
(4, 'Commercial',   'Retail Space',  8200000.00,  '2024-05-15', 'unsold'),
-- === CALAMBA (region 5) ===
(5, 'Residential',  'House and Lot', 5200000.00,  '2023-03-10', 'sold'),
(5, 'Residential',  'Townhouse',     4800000.00,  '2023-03-12', 'sold'),
(5, 'Residential',  'House and Lot', 4200000.00,  '2023-05-20', 'sold'),
(5, 'Residential',  'Townhouse',     3900000.00,  '2023-07-15', 'sold'),
(5, 'Commercial',   'Retail Space',  6500000.00,  '2023-09-01', 'sold'),
(5, 'Residential',  'House and Lot', 5800000.00,  '2023-11-10', 'sold'),
(5, 'Residential',  'Condominium',   4500000.00,  '2024-01-20', 'unsold'),
(5, 'Residential',  'House and Lot', 6200000.00,  '2024-03-05', 'reserved'),
(5, 'Commercial',   'Retail Space',  7800000.00,  '2024-04-20', 'unsold'),
-- === TUGUEGARAO (region 6) ===
(6, 'Residential',  'House and Lot', 3200000.00,  '2023-03-15', 'sold'),
(6, 'Agricultural', 'Land',          2000000.00,  '2023-03-18', 'sold'),
(6, 'Residential',  'House and Lot', 2800000.00,  '2023-05-01', 'sold'),
(6, 'Agricultural', 'Land',          1500000.00,  '2023-06-10', 'sold'),
(6, 'Residential',  'House and Lot', 3500000.00,  '2023-08-20', 'sold'),
(6, 'Residential',  'Townhouse',     2600000.00,  '2023-10-15', 'sold'),
(6, 'Agricultural', 'Land',          1800000.00,  '2023-12-01', 'sold'),
(6, 'Residential',  'House and Lot', 3800000.00,  '2024-02-10', 'unsold'),
(6, 'Agricultural', 'Land',          2200000.00,  '2024-03-25', 'unsold'),
(6, 'Residential',  'Townhouse',     2900000.00,  '2024-05-01', 'unsold'),
-- === ADDITIONAL PROPERTIES (IDs 67–80) ===
-- Makati (region 1)
(1, 'Residential',  'Condominium',   12800000.00, '2023-05-01', 'sold'),  -- 67
(1, 'Commercial',   'Office Space',  21000000.00, '2023-08-10', 'sold'),  -- 68
-- Quezon City (region 2)
(2, 'Residential',  'House and Lot', 7800000.00,  '2023-04-15', 'sold'),  -- 69
(2, 'Residential',  'Condominium',   6500000.00,  '2023-07-20', 'sold'),  -- 70
-- Taguig (region 3)
(3, 'Residential',  'Condominium',   13200000.00, '2023-06-05', 'sold'),  -- 71
(3, 'Commercial',   'Retail Space',  20500000.00, '2023-09-20', 'sold'),  -- 72
-- Angeles (region 4)
(4, 'Residential',  'House and Lot', 4100000.00,  '2023-06-01', 'sold'),  -- 73
(4, 'Industrial',   'Warehouse',     10500000.00, '2023-09-01', 'sold'),  -- 74
-- Calamba (region 5)
(5, 'Residential',  'House and Lot', 4600000.00,  '2023-06-15', 'sold'),  -- 75
(5, 'Residential',  'Townhouse',     3700000.00,  '2023-08-01', 'sold'),  -- 76
-- Tuguegarao (region 6)
(6, 'Agricultural', 'Land',          1650000.00,  '2023-07-01', 'sold'),  -- 77
(6, 'Residential',  'House and Lot', 3100000.00,  '2023-09-10', 'sold'),  -- 78
(6, 'Residential',  'Townhouse',     2400000.00,  '2023-11-01', 'sold'),  -- 79
(6, 'Agricultural', 'Land',          1900000.00,  '2024-01-05', 'unsold');    -- 80

-- ===========
-- CLIENTS
-- 50 clients across PH cities
-- ===========
INSERT INTO clients (client_name, client_email, client_contact_no, client_address) VALUES
('Juan Dela Cruz',       'juan.delacruz@email.ph',    '09190000001', 'Quezon City'),
('Anna Lim',             'anna.lim@email.ph',          '09190000002', 'Makati'),
('Mark Tan',             'mark.tan@email.ph',           '09190000003', 'Pasig'),
('Christine Uy',         'christine.uy@email.ph',       '09190000004', 'Taguig'),
('Robert Villanueva',    'robert.v@email.ph',           '09190000005', 'Angeles'),
('David Ong',            'david.ong@email.ph',          '09190000006', 'Makati'),
('Michelle Tan',         'michelle.tan@email.ph',       '09190000007', 'Calamba'),
('Paolo Garcia',         'paolo.g@email.ph',            '09190000008', 'Quezon City'),
('Sarah Lopez',          'sarah.lopez@email.ph',        '09190000009', 'Taguig'),
('Kevin Mendoza',        'kevin.m@email.ph',            '09190000010', 'Tuguegarao'),
('Jasmine Reyes',        'jasmine.r@email.ph',          '09190000011', 'Makati'),
('Brian Co',             'brian.co@email.ph',           '09190000012', 'Taguig'),
('Carla Bernardo',       'carla.b@email.ph',            '09190000013', 'Quezon City'),
('Nathaniel Go',         'nathaniel.go@email.ph',       '09190000014', 'Makati'),
('Felicia Dantes',       'felicia.d@email.ph',          '09190000015', 'Pasig'),
('Raymond Chua',         'raymond.c@email.ph',          '09190000016', 'Taguig'),
('Veronica Sy',          'veronica.s@email.ph',         '09190000017', 'Makati'),
('Antonio Salazar',      'antonio.sal@email.ph',        '09190000018', 'Angeles'),
('Diana Lacson',         'diana.l@email.ph',            '09190000019', 'Calamba'),
('Erwin Buenaventura',   'erwin.b@email.ph',            '09190000020', 'Quezon City'),
('Mylene Soriano',       'mylene.s@email.ph',           '09190000021', 'Makati'),
('Gino Pascual',         'gino.p@email.ph',             '09190000022', 'Taguig'),
('Rina Aguilar',         'rina.a@email.ph',             '09190000023', 'Calamba'),
('Ferdinand Lozano',     'ferdinand.l@email.ph',        '09190000024', 'Tuguegarao'),
('Camille Torres',       'camille.t@email.ph',          '09190000025', 'Quezon City'),
('Oscar Magno',          'oscar.m@email.ph',            '09190000026', 'Makati'),
('Irene Cabrera',        'irene.c@email.ph',            '09190000027', 'Taguig'),
('Theodore Yap',         'theodore.y@email.ph',         '09190000028', 'Makati'),
('Sophia dela Torre',    'sophia.dt@email.ph',          '09190000029', 'Angeles'),
('Marcus Evangelista',   'marcus.e@email.ph',           '09190000030', 'Quezon City'),
('Lorena Alcantara',     'lorena.a@email.ph',           '09190000031', 'Calamba'),
('Patrick Tan',          'patrick.t@email.ph',          '09190000032', 'Makati'),
('Sheila Ocampo',        'sheila.o@email.ph',           '09190000033', 'Taguig'),
('Dante Peralta',        'dante.p@email.ph',            '09190000034', 'Angeles'),
('Melissa Jimenez',      'melissa.j@email.ph',          '09190000035', 'Quezon City'),
('Alvin Quizon',         'alvin.q@email.ph',            '09190000036', 'Tuguegarao'),
('Rochelle Bautista',    'rochelle.b@email.ph',         '09190000037', 'Makati'),
('Emmanuel Flores',      'emmanuel.f@email.ph',         '09190000038', 'Calamba'),
('Tricia Santos',        'tricia.s@email.ph',           '09190000039', 'Taguig'),
('Hernando Macaraeg',    'hernando.m@email.ph',         '09190000040', 'Quezon City'),
('Aileen Fajardo',       'aileen.f@email.ph',           '09190000041', 'Makati'),
('Rommel Aquino',        'rommel.a@email.ph',           '09190000042', 'Pasig'),
('Elaine Perez',         'elaine.p@email.ph',           '09190000043', 'Angeles'),
('Jerome Guevarra',      'jerome.g@email.ph',           '09190000044', 'Taguig'),
('Maribel Corpuz',       'maribel.c@email.ph',          '09190000045', 'Tuguegarao'),
('Noel Samonte',         'noel.s@email.ph',             '09190000046', 'Calamba'),
('Yvonne Santiago',      'yvonne.s@email.ph',           '09190000047', 'Makati'),
('Gilbert Morales',      'gilbert.m@email.ph',          '09190000048', 'Quezon City'),
('Corazon Manalo',       'corazon.m@email.ph',          '09190000049', 'Taguig'),
('Renato Dela Vega',     'renato.dv@email.ph',          '09190000050', 'Angeles');

-- ===========
-- SALES
-- 60 sales spread across 2023–2024
-- sale_amount is slightly below listing_price (negotiation is standard in PH RE)
-- Not all properties are sold — keeps sold/unsold query interesting
-- Agent assignments are realistic (agents sell within their region mostly)
-- ===========
INSERT INTO sales (agent_id, client_id, property_id, sale_date, sale_amount) VALUES
-- === 2023 Q1 ===
(1,  2,  1,  '2023-03-01', 8300000.00),
(2,  1,  2,  '2023-03-10', 6050000.00),
(3,  6,  3,  '2023-03-28', 21500000.00),
(5,  8,  14, '2023-03-20', 7000000.00),
(9,  4,  26, '2023-03-25', 9600000.00),
-- === 2023 Q2 ===
(4,  11, 4,  '2023-04-15', 9550000.00),
(6,  13, 15, '2023-04-20', 14700000.00),
(10, 9,  27, '2023-04-28', 7400000.00),
(12, 5,  38, '2023-05-05', 4400000.00),
(13, 18, 39, '2023-05-12', 11700000.00),
(14, 7,  50, '2023-05-18', 5100000.00),
(15, 23, 51, '2023-05-25', 4700000.00),
(16, 10, 60, '2023-06-02', 3150000.00),
(17, 24, 61, '2023-06-10', 1950000.00),
(7,  20, 16, '2023-06-18', 5300000.00),
-- === 2023 Q3 ===
(1,  26, 5,  '2023-07-05', 11200000.00),
(18, 14, 6,  '2023-07-20', 18000000.00),
(2,  32, 7,  '2023-08-08', 7600000.00),
(8,  25, 17, '2023-08-15', 8000000.00),
(9,  22, 28, '2023-08-22', 28000000.00),  
(11, 27, 29, '2023-09-01', 12200000.00),
(12, 34, 40, '2023-09-10', 3700000.00),
(14, 38, 52, '2023-09-18', 4100000.00),
(15, 31, 53, '2023-09-25', 3800000.00),
(16, 36, 62, '2023-09-30', 2750000.00),
-- === 2023 Q4 ===
(3,  47, 8,  '2023-10-10', 8700000.00),
(6,  40, 18, '2023-10-18', 11800000.00),
(10, 33, 30, '2023-10-25', 10500000.00),
(13, 29, 41, '2023-11-02', 9600000.00),
(19, 15, 19, '2023-11-10', 6600000.00),
(20, 16, 31, '2023-11-18', 14000000.00),  
(4,  42, 20, '2023-11-25', 7300000.00),
(7,  35, 21, '2023-12-05', 9200000.00),
(11, 39, 32, '2023-12-12', 8600000.00),
(17, 45, 63, '2023-12-20', 1480000.00),
-- === 2024 Q1 ===
(1,  50, 33, '2024-01-08', 19000000.00),  
(18, 28, 34, '2024-01-20', 32000000.00),  
(5,  48, 22, '2024-01-25', 17200000.00),
(8,  41, 23, '2024-02-05', 6000000.00),
(12, 43, 42, '2024-02-12', 3100000.00),
(14, 46, 54, '2024-02-18', 5700000.00),
(2,  37, 35, '2024-03-01', 11000000.00),
(9,  44, 36, '2024-03-08', 10700000.00),
(13, 30, 43, '2024-03-15', 9500000.00),
(16, 24, 64, '2024-03-22', 3400000.00),
-- === 2024 Q2 ===
(3,  17, 37, '2024-04-05', 6800000.00),
(19, 21, 24, '2024-04-12', 7700000.00),
(20, 12, 25, '2024-04-20', 19200000.00),  
(11, 49, 44, '2024-04-28', 11300000.00),
(6,  13, 45, '2024-05-05', 8000000.00),
(15, 7,  55, '2024-05-12', 5600000.00),
(17, 36, 65, '2024-05-18', 1750000.00),
(4,  26, 46, '2024-05-25', 4600000.00),
(10, 32, 47, '2024-06-02', 3800000.00),
(7,  19, 48, '2024-06-10', 7600000.00),
(1,  14, 49, '2024-06-18', 8000000.00),
(13, 50, 56, '2024-06-25', 3400000.00),
(15, 38, 57, '2024-06-28', 2500000.00),
(16, 45, 66, '2024-06-30', 1750000.00),
(17, 24, 67, '2024-06-30', 2800000.00);
