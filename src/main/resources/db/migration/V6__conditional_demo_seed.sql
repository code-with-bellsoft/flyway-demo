DO
$$
BEGIN
    IF '${seed_demo_data}' = 'true' THEN
        INSERT INTO civilian (id, legal_name, national_id, birth_date, email, criminal_record, under_surveillance)
        VALUES (1, 'Jax Ortega', 'XP‑771203‑VT', CURRENT_DATE, 'ortega@xqa.li', FALSE, FALSE);

        INSERT INTO cyberware (id, name, type, version, manufacturer)
        VALUES (1, 'OptiSight X3', 'ocular', '1.1', 'SynthForge');

        INSERT INTO implant_session (id, civilian_id, cyberware_id, installed_at, installed_by)
        VALUES (1, 1, 1, CURRENT_DATE, 'MP-129854');
    END IF;
END
$$;
