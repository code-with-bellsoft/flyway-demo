CREATE TABLE civilian (
        id BIGINT PRIMARY KEY,
        legal_name VARCHAR(250),
        national_id VARCHAR(50),
        birth_date DATE,
        criminal_record BOOLEAN,
        under_surveillance BOOLEAN
);

CREATE TABLE cyberware (
        id BIGINT PRIMARY KEY,
        name VARCHAR(100),
        type VARCHAR(50),
        version VARCHAR(50)
);

CREATE TABLE implant_session (
        id BIGINT PRIMARY KEY,
        civilian_id BIGINT,
        cyberware_id BIGINT,
        installed_at DATE,
        installed_by VARCHAR(250),
        CONSTRAINT fk_civilian FOREIGN KEY (civilian_id) REFERENCES civilian(id),
        CONSTRAINT fk_cyberware FOREIGN KEY (cyberware_id) REFERENCES cyberware(id)
);