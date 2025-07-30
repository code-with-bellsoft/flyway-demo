-- ${flyway:timestamp}
-- Repeatable migration: (re)create a view joining all three tables.

CREATE OR REPLACE VIEW v_implant_summary AS
SELECT
    s.id               AS session_id,
    c.legal_name,
    c.national_id,
    c.birth_date,
    c.criminal_record,
    c.under_surveillance,
    w.name             AS cyberware_name,
    w.type             AS cyberware_type,
    w.version          AS cyberware_version,
    s.installed_at,
    s.installed_by
FROM implant_session s
JOIN civilian      c ON c.id  = s.civilian_id
JOIN cyberware     w ON w.id  = s.cyberware_id;