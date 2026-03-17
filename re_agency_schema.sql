-- Creates the new database for our real estate agency
CREATE DATABASE re_agency_db;

-- Conencts to the new data base
\c re_agency_db;


-- Table creation
CREATE TABLE IF NOT EXISTS regions (
  region_id INT GENERATED ALWAYS AS IDENTITY,
  region_name VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  PRIMARY KEY(region_id)
);

CREATE TABLE IF NOT EXISTS agents (
  agent_id INT GENERATED ALWAYS AS IDENTITY,
  region_id INT NOT NUll,
  agent_name VARCHAR(100) NOT NULL,
  agent_email VARCHAR(100) NOT NULL,
  agent_contact_no VARCHAR(20) CHECK (agent_contact_no ~ '^[0-9]{10,11}$') NOT NULL,
  commission_rate NUMERIC(4,2) CHECK (commission_rate > 0 AND commission_rate <= 100) NOT NULL,
  PRIMARY KEY (agent_id),

  CONSTRAINT fk_agents_region
    FOREIGN KEY(region_id)
      REFERENCES regions(region_id)
);

CREATE TABLE IF NOT EXISTS properties (
  property_id INT GENERATED ALWAYS AS IDENTITY,
  region_id INT NOT NULL,
  property_type VARCHAR(100) DEFAULT 'Land',
  building_type VARCHAR(100) NOT NULL,
  listing_price NUMERIC(12,2) NOT NULL,
  listing_date DATE NOT NULL,
  property_status VARCHAR(10) CHECK (property_status IN ('unsold', 'sold','reserved')) DEFAULT 'unsold',
  PRIMARY KEY (property_id),

  CONSTRAINT fk_properties_region
    FOREIGN KEY(region_id)
      REFERENCES regions(region_id)
);

CREATE TABLE IF NOT EXISTS clients (
  client_id INT GENERATED ALWAYS AS IDENTITY,
  client_name VARCHAR(100) NOT NULL,
  client_email VARCHAR(100),
  client_contact_no VARCHAR(20) CHECK (client_contact_no ~ '^[0-9]{10,11}$') NOT NULL,
  client_address VARCHAR(100),
  PRIMARY KEY (client_id)
);

CREATE TABLE IF NOT EXISTS sales (
  sales_id INT GENERATED ALWAYS AS IDENTITY, 
  agent_id INT NOT NULL,
  client_id INT NOT NULL,
  property_id INT NOT NULL,
  sale_date DATE NOT NULL,
  sale_amount NUMERIC(12,2) NOT NULL,
  PRIMARY KEY (sales_id),

  CONSTRAINT fk_agent_sales
    FOREIGN KEY (agent_id)
      REFERENCES agents(agent_id),

  CONSTRAINT fk_client_sales
    FOREIGN KEY (client_id)
      REFERENCES clients(client_id),

  CONSTRAINT fk_property_sales
    FOREIGN KEY (property_id)
      REFERENCES properties(property_id)
);
